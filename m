Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E28B4A5D32
	for <lists@lfdr.de>; Mon,  2 Sep 2019 22:43:17 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C3509D09;
	Mon,  2 Sep 2019 20:43:00 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D324CB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 20:42:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B55747DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 20:42:57 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id l14so13923899lje.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 02 Sep 2019 13:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F7n1UzD8RQshSJCEuutNbtN8w/KZDd0Ifw/quohaLGI=;
	b=E0r4IQjDh8+9od69VfPShNcbGYkB+zvN4+/O0UnzKBQBbHOOArchjVAfl3tg7w8Vrb
	u2iRhB5BE/TZUO+Ah/XsGodgH36lpOfieRFbd/Wp1uknl0px7oKxuKxvQx7VOp30x3XO
	Vh7u1PQT+HRp/RKXFCj2j4cqpXTP/FMxAhsLPG8d+ZXtP5JUul9urCkI9xsmR4mpZrJE
	tYTV7FyGbJUGwT+jh0UKpP25FCby8p2UGN4vLYr2LnBMX//7+CHTHGyKKczv602eGReU
	ZZipiBd3CPXJPnxS2PV6ES8M+cjIZtrrdRIMTJd/nlK5rFZE4x1qnCqy7NbTUbA4BruO
	5mWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F7n1UzD8RQshSJCEuutNbtN8w/KZDd0Ifw/quohaLGI=;
	b=G0WA0eTjy6clHPmW2p9F5ADGUEw2bLqDyzxzxDut3osuy1SocA7ATHTzDvUZOnHVbC
	DyyfBTs95vffL9ygfsAZd508Y+2Ga3S7mzlYsjcknGMDzEJNQAHIFW7HqHhaxOcyzynW
	67RRLTPbc/WjlvAkO0pbHGwA5y1nqcNBENWnPJqbTkxMQYN5IvJENDryDKOg6xdX9TDH
	0BNAwLNSR9byRwAopoJq2qPFcLHGQhGf2alS3v2AVzrYfbegCe3MY+H3v37hVCVi3a/Q
	cBAhTY/swFcZJXqgoA2JkGo2RifCuuAZv5HhuHnRo76o5pEPsaGmvE5q85PkXi+mFdoq
	jRTg==
X-Gm-Message-State: APjAAAXCUNJfbTB6GMsm9sZLDM5IIMONcNdixb0kTsYHhxvmpgf4m6rT
	IEkCPTRVcTg6AuIpPE8An/I0l9v7B1hrelV4j4w=
X-Google-Smtp-Source: APXvYqzTpbJnGSs9ASLxnaHobMuyLPNTRWmgFY2BuryhMNRvg3uqwwPArQ3oNufUE5yIlBSGZ1qA435kXPtneLkuPsM=
X-Received: by 2002:a2e:780c:: with SMTP id t12mr5192437ljc.226.1567456975951; 
	Mon, 02 Sep 2019 13:42:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac2:4844:0:0:0:0:0 with HTTP;
	Mon, 2 Sep 2019 13:42:55 -0700 (PDT)
In-Reply-To: <20190830135857.GF7013@google.com>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 3 Sep 2019 06:42:55 +1000
Message-ID: <CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8966177984892779961=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

--===============8966177984892779961==
Content-Type: multipart/alternative; boundary="000000000000409a690591980417"

--000000000000409a690591980417
Content-Type: text/plain; charset="UTF-8"

On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:

> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
> > ...
> > Are there some additional topics that you'd like to suggest that we
> > discuss at the maintainer's summit?
>
> I don't have an effective workflow for managing incoming patches.  I
> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
> to put patches on topic branches, review them, polish them, merge them
> together into a "-next" branch, generate pull requests, etc.
>
> I wish there were a collection of the workflows and scripts people
> use, maybe even in the kernel sources so they could be shared and
> improved.  Some short screencasts could help visualize and pull things
> together.  I know a lot of this stuff is "out there" somewhere, but
> I'm not aware of any organized collection.


These are quite drm specific but they do mean myself and Daniel can operate
seamlessly, and all i915 and drm misc maintainers and committers use the
same enforced workflow. We hope to move to gitlab at some point and may try
and use the same interface or not.

 https://drm.pages.freedesktop.org/maintainer-tools/index.html

Happy to give more info at maintainer summit, but we have gotten negative
feedback in the past from some community members who wanted to point out at
length that drm didnt invent group maintainership first, i still have no
idea of the relevancy of the comment.

Dave.

--000000000000409a690591980417
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Friday, 30 August 2019, Bjorn Helgaas &lt;<a href=3D"mailto:helg=
aas@kernel.org">helgaas@kernel.org</a>&gt; wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts&#39;o wro=
te:<br>
&gt; ...<br>
&gt; Are there some additional topics that you&#39;d like to suggest that w=
e<br>
&gt; discuss at the maintainer&#39;s summit?<br>
<br>
I don&#39;t have an effective workflow for managing incoming patches.=C2=A0=
 I<br>
use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts<br>
to put patches on topic branches, review them, polish them, merge them<br>
together into a &quot;-next&quot; branch, generate pull requests, etc.<br>
<br>
I wish there were a collection of the workflows and scripts people<br>
use, maybe even in the kernel sources so they could be shared and<br>
improved.=C2=A0 Some short screencasts could help visualize and pull things=
<br>
together.=C2=A0 I know a lot of this stuff is &quot;out there&quot; somewhe=
re, but<br>
I&#39;m not aware of any organized collection.</blockquote><div><br></div><=
div>These are quite drm specific but they do mean myself and Daniel can ope=
rate seamlessly, and all i915 and drm misc maintainers and committers use t=
he same enforced workflow. We hope to move to gitlab at some point and may =
try and use the same interface or not.</div><div><br></div><div>=C2=A0<a hr=
ef=3D"https://drm.pages.freedesktop.org/maintainer-tools/index.html">https:=
//drm.pages.freedesktop.org/maintainer-tools/index.html</a></div><div><br><=
/div><div>Happy to give more info at maintainer summit, but we have gotten =
negative feedback in the past from some community members who wanted to poi=
nt out at length that drm didnt invent group maintainership first, i still =
have no idea of the relevancy of the comment.</div><div><br></div><div>Dave=
.</div>

--000000000000409a690591980417--

--===============8966177984892779961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============8966177984892779961==--
