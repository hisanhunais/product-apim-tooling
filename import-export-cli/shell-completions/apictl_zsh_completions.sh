#compdef apictl

_arguments \
  '1: :->level1' \
  '2: :->level2' \
  '3: :_files'
case $state in
  level1)
    case $words[1] in
      apictl)
        _arguments '1: :(add add-env change change-status delete export-api export-apis export-app get-keys help import-api import-app init install list login logout remove set uninstall update version)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  level2)
    case $words[2] in
      change)
        _arguments '2: :(help registry)'
      ;;
      change-status)
        _arguments '2: :(api help)'
      ;;
      list)
        _arguments '2: :(api-products apis apps envs help)'
      ;;
      uninstall)
        _arguments '2: :(api-operator help wso2am-operator)'
      ;;
      update)
        _arguments '2: :(api help)'
      ;;
      add)
        _arguments '2: :(api help)'
      ;;
      delete)
        _arguments '2: :(api api-product app help)'
      ;;
      install)
        _arguments '2: :(api-operator help wso2am-operator)'
      ;;
      remove)
        _arguments '2: :(env help)'
      ;;
      *)
        _arguments '*: :_files'
      ;;
    esac
  ;;
  *)
    _arguments '*: :_files'
  ;;
esac
