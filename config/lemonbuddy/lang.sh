case "$(xset -q|grep LED| awk '{ print $10 }')" in
		"00001000") lang="EN" ;;
		"00001001") lang="EN" ;;
		"00001002") lang="EN" ;;
		"00001003") lang="EN" ;;
		"00001004") lang="EN" ;;
		"00001005") lang="EN" ;;
		"00001006") lang="EN" ;;
		"00001007") lang="EN" ;;
		*) lang="PT" ;;
esac

printf "%s\n" "${lang}"