# mecab-ko-java

[mecab-ko-java](https://github.com/scatterlab/mecab-ko-java)는 [은전한닢 프로젝트](http://eunjeon.blogspot.kr/)의 [mecab-ko](https://bitbucket.org/eunjeon/mecab-ko) 프로젝트의 Mirror입니다.

SWIG를 통해 빌드된 MeCab의 Java Interface를 Maven Repository에서 불러와 사용할 수 있도록 Github Packages를 사용하여 배포하는 목적으로 개설된 프로젝트입니다.

## 사용 방법

프로젝트의 build.gradle에 다음을 추가합니다.

```groovy
repositories {
	maven {
		url "https://maven.pkg.github.com/scatterlab/mecab-ko-java"

		credentials {
			username "<USERNAME>"
			password "<GITHUB_PERSONAL_ACCESS_TOKEN>"
		}
	}
}

dependencies {
	implementation 'com.scatterlab.mecab-ko-java:mecab-ko-java:<VERSION>'
}
```

사용할 버전은 [Package 페이지](https://github.com/scatterlab/mecab-ko-java/packages)를 참조하십시오.

# 라이센스

mecab-ko-java의 라이센스는 MeCab, mecab-ko의 라이센스를 그대로 따릅니다.

> mecab-ko와 MeCab은 무료 소프트웨어입니다. GPL (the GNU General Public License), LGPL (Lesser GNU General Public License) 또는 BSD 라이선스에 따라 소프트웨어를 사용, 재배포할 수 있습니다. 자세한 내용은 COPYING, GPL, LGPL, BSD 각 파일을 참조하십시오.