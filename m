Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0752E9BBCA
	for <lists@lfdr.de>; Sat, 24 Aug 2019 06:28:25 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CE551C6A;
	Sat, 24 Aug 2019 04:28:10 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12020723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 04:28:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B67AE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 04:28:08 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id i30so7904747pfk.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:mime-version:subject:date:references:to:in-reply-to:message-id; 
	bh=AfoON1fukv6yPcaXHFAwlLV9ZdLYtgAr6MCIQnA28l0=;
	b=eKlEMq5w+y78LNTWOIeyPJSdPB63PiFJLgIfiPS1aEi5zfzK6meRFeEqi3W2SfiAdq
	x0thqxMGYAcQ6j4cSte6hvX3DQJz0hYQiNKl1ms0oCQPCuamBTKT0/hpoqVJyDtbap5S
	EBqFim89JYt94cK3JAI/04uhgOnGv6NVFxgGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=AfoON1fukv6yPcaXHFAwlLV9ZdLYtgAr6MCIQnA28l0=;
	b=BbeDkmv9dnirrlLlW5EVnc9PprHDI/XbjJC+t+XPvhRxGPF2IMP13O2wmkk3XQ7kut
	HL8/zXXKc8SjM1ykrANIaHTuvCwsn9+El+N1a8Tur0R7t/khwPmCn/8DwsM1bCzh+KNU
	2uFsX8q7uUyUxn8678bR7bESGJ7VZi3JUalcqhOzkbNPB7RD1RBH33ZJmbRobqXv4YGH
	OOmb8pIOHtESOkcNlnejPiNLGUI4DDLp8ART1gLfUySahDxBr69ATqVjZ39ghEqILUmD
	UDgTW3Lg9PWAjXiXlTNmBQBpYi2wELHr8ujzdp+icfdHC5fB8aQR8gEA8Wh9rA9DwTCa
	1azg==
X-Gm-Message-State: APjAAAXHsAikGy8WjJNC91xT9ZWpF4MpMviNSiLA0APB1VsLEXhkbLxS
	0Bn3XcSeftKe553IFs3MZt5Ii8npP3c=
X-Google-Smtp-Source: APXvYqxKTpXbd2+G8VKZUMX4Zf5sgjiCUMlouzliMOL3Z7xYVdjSPHZn6iJ2goXDGMgn05tvM/bxdw==
X-Received: by 2002:a65:684c:: with SMTP id q12mr6332654pgt.405.1566620887510; 
	Fri, 23 Aug 2019 21:28:07 -0700 (PDT)
Received: from [172.20.3.188] ([12.0.118.110])
	by smtp.gmail.com with ESMTPSA id
	ce20sm4136291pjb.16.2019.08.23.21.28.06
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 21:28:07 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 24 Aug 2019 00:28:03 -0400
References: <4B8CE92E-C6B6-43B0-807F-932414A578D8@labbott.name>
To: ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <4B8CE92E-C6B6-43B0-807F-932414A578D8@labbott.name>
Message-Id: <1D7B6F26-B9F9-47E4-9EEF-D71A71D3F860@labbott.name>
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board --
 call for participation in a test vote
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
Content-Type: multipart/mixed; boundary="===============1224836673389316790=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============1224836673389316790==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_BC7481D6-628F-486D-9B8C-E585692A3BC3"


--Apple-Mail=_BC7481D6-628F-486D-9B8C-E585692A3BC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 29, 2019, at 9:09 AM, Laura Abbott <laura@labbott.name> wrote:
>=20
> Hi,
>=20
> As a follow up to changes in voting procedures[1] for the Technical =
Advisory
> Board (TAB), we are running a test vote. The goal is to let everyone =
see what
> voting will look like and help the TAB members running the election =
sort out
> any issues that may arise. We will be voting on two t-shirts for
> Greg Kroah-Hartman to wear at Linux Plumbers Conference 2019 in =
Lisbon,
> Portugal. Here are the options for what will be on the t-shirt:
>=20
> - Applied, Thanks!
> - This doesn't apply to my tree :(
> - Please report that to your distribution
> - One change per patch, please
> - Please resend with a proper subject
>=20
> If you would like to participate, please e-mail me (off list =
preferably) by
> August 18th, 23:59 UTC=E2=88=9204:00 (that's midnight EDT). The poll =
will run from
> August 19th to August 23rd 23:59 UTC=E2=88=9204:00 and we will =
announce the results
> here.=20
>=20
> Anyone may participate in this test poll and you are encouraged to =
give
> feedback. If you have any questions, feel free to contact the TAB at
> tab@lists.linux-foundation.org
>=20
> Thanks,
> Laura
>=20
> [1] =
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/0065=
82.html

The results are in! The winning votes are:

1. Applied, Thanks!=20
2. This doesn't apply to my tree :(

Thanks to everyone who took the time to participate in the test vote. If =
you're curious
what the results look like, you can see them at=20

=
https://civs.cs.cornell.edu/cgi-bin/results.pl?num_winners=3D2&id=3DE_d09f=
e8482f3be703&rkey=3D1c9ac994a2953037&algorithm=3Drunoff =
<https://civs.cs.cornell.edu/cgi-bin/results.pl?num_winners=3D2&id=3DE_d09=
fe8482f3be703&rkey=3D1c9ac994a2953037&algorithm=3Drunoff>

I'll be sending out more information on the actual voting soon.

Thanks,
Laura  =20=

--Apple-Mail=_BC7481D6-628F-486D-9B8C-E585692A3BC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 29, 2019, at 9:09 AM, Laura Abbott &lt;<a =
href=3D"mailto:laura@labbott.name" class=3D"">laura@labbott.name</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">Hi,<br class=3D""><br class=3D"">As a follow up to changes in =
voting procedures[1] for the Technical Advisory<br class=3D"">Board =
(TAB), we are running a test vote. The goal is to let everyone see =
what<br class=3D"">voting will look like and help the TAB members =
running the election sort out<br class=3D"">any issues that may arise. =
We will be voting on two t-shirts for<br class=3D"">Greg Kroah-Hartman =
to wear at Linux Plumbers Conference 2019 in Lisbon,<br =
class=3D"">Portugal. Here are the options for what will be on the =
t-shirt:<br class=3D""><br class=3D"">- Applied, Thanks!<br class=3D"">- =
This doesn't apply to my tree :(<br class=3D"">- Please report that to =
your distribution<br class=3D"">- One change per patch, please<br =
class=3D"">- Please resend with a proper subject<br class=3D""><br =
class=3D"">If you would like to participate, please e-mail me (off list =
preferably) by<br class=3D"">August 18th, 23:59 UTC=E2=88=9204:00 =
(that's midnight EDT). The poll will run from<br class=3D"">August 19th =
to August 23rd 23:59 UTC=E2=88=9204:00 and we will announce the =
results<br class=3D"">here. <br class=3D""><br class=3D"">Anyone may =
participate in this test poll and you are encouraged to give<br =
class=3D"">feedback. If you have any questions, feel free to contact the =
TAB at<br class=3D""><a href=3D"mailto:tab@lists.linux-foundation.org" =
class=3D"">tab@lists.linux-foundation.org</a><br class=3D""><br =
class=3D"">Thanks,<br class=3D"">Laura<br class=3D""><br class=3D"">[1] =
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/0065=
82.html</div></div></blockquote></div><br class=3D""><div class=3D"">The =
results are in! The winning votes are:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">1. Applied, =
Thanks!&nbsp;</div><div class=3D"">2. This doesn't apply to my tree =
:(</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks to =
everyone who took the time to participate in the test vote. If you're =
curious</div><div class=3D"">what the results look like, you can see =
them at&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><a=
 =
href=3D"https://civs.cs.cornell.edu/cgi-bin/results.pl?num_winners=3D2&amp=
;id=3DE_d09fe8482f3be703&amp;rkey=3D1c9ac994a2953037&amp;algorithm=3Drunof=
f" =
class=3D"">https://civs.cs.cornell.edu/cgi-bin/results.pl?num_winners=3D2&=
amp;id=3DE_d09fe8482f3be703&amp;rkey=3D1c9ac994a2953037&amp;algorithm=3Dru=
noff</a></div><div class=3D""><br class=3D""></div><div class=3D"">I'll =
be sending out more information on the actual voting soon.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Thanks,</div><div =
class=3D"">Laura &nbsp;&nbsp;</div></div></body></html>=

--Apple-Mail=_BC7481D6-628F-486D-9B8C-E585692A3BC3--

--===============1224836673389316790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1224836673389316790==--
