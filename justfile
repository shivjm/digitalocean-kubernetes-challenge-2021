test: test-valid test-invalid

test-invalid: (test-files "invalid" "0" "rejected")

test-valid: (test-files "valid" "1" "accepted")

test-files directory expected label:
    #!/usr/bin/env bash
    set -euo pipefail
    FAILED=0
    for f in tests/{{ directory }}/*.yaml; do
      if {{ if expected == "0" { "" } else { "!" } }} (silence=`kubectl apply -f $f 2>&1`); then
        echo "$f: NOT {{ label }} ❌"
        FAILED=1
      else
        echo "$f: {{ label }} ✔"
      fi

      kubectl delete -f $f --ignore-not-found > /dev/null
    done

    [[ $FAILED -eq 0 ]] || exit 1

install-kyverno:
    helmfile apply

install-policies:
    kubectl apply -f policies
