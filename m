Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1916F9DE57
	for <lists@lfdr.de>; Tue, 27 Aug 2019 09:03:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 700C11028;
	Tue, 27 Aug 2019 07:02:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CA2ABFC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:02:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBB8A1FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:02:41 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46Hfvf6fQ6z9s7T;
	Tue, 27 Aug 2019 17:02:38 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
	s=201702; t=1566889359;
	bh=ThBSwCwgeuBWx4q89HS6g3fU1ykQBG7YgGG3SDon/GM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=po3P8C94isCRC3p6BKA54rtTN4n7YxOCu93QimzfqXF0YwO6iICNLRBsCfcHwwLNw
	P4FQ2LnsytZ0G3LH/qkkvYrqwUT8ePassfwCamlIMAqqDMubKZpJAoNCWID331+FVm
	MMeRSVBiphzyL2SUHl/ESUqCZmFK2NUFLScCoVuWRUgr3c7DV2wsj/a533zTZQ8Ahm
	hlVMElVEM1lymUoLXFtaJ4EX+nausThKlLvR6O4hDKmHViYgTqfH4cWTyo02lCYhA9
	QxCXttkVT5MVsSwU2oNHqmR7V614dM+00EKxPF41WCn9KN0i4TXDCPhinTI9rIUcWl
	UfJlCp+4tmjDQ==
Date: Tue, 27 Aug 2019 17:02:38 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Paul Mackerras <paulus@ozlabs.org>
Message-ID: <20190827170238.2807ddc1@canb.auug.org.au>
In-Reply-To: <20190826221949.GC7402@blackberry>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<20190826221949.GC7402@blackberry>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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
Content-Type: multipart/mixed; boundary="===============4537962973394183735=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

--===============4537962973394183735==
Content-Type: multipart/signed; boundary="Sig_/TG=8ak+vUoWFeJjR/HB5HNo";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/TG=8ak+vUoWFeJjR/HB5HNo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Tue, 27 Aug 2019 08:19:49 +1000 Paul Mackerras <paulus@ozlabs.org> wrote:
>
> On Thu, Aug 22, 2019 at 08:03:51PM -0700, Linus Torvalds wrote:
> > On Thu, Aug 22, 2019 at 7:58 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote: =20
> > >
> > > So yes, I'd *much* rather see that "Link" line than try to make a
> > > "Change-ID" line be a thing. =20
> >=20
> > Tangential note: since it looks like "Link:" lines are going to get
> > more common in general, maybe somebody with the right tck/tk-fu can
> > make a tool like 'gitk' be able to just do the hyperlinking thing (it
> > already does it for commit hashes in the commit message, but wouldn't
> > it be convenient to do that for web links too and open a browser
> > tab?). =20
>=20
> I just posted a patch to do that to the git mailing list (see
> https://marc.info/?l=3Dgit&m=3D156685770100577&w=3D2).  I'll commit it af=
ter
> people have had a chance to comment on the regexp for detecting links
> and the choice of web browser command for each platform.

Looks good here.  And saves me the pain of relearning enough Tcl to do
the patch myself :-)

--=20
Cheers,
Stephen Rothwell

--Sig_/TG=8ak+vUoWFeJjR/HB5HNo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1k1Y4ACgkQAVBC80lX
0Gx/jQf3UyDOAbqhHh/4fIOo1DEc5LebbRyar/pIae44tdK74JSTQEkshVEXEr2Y
vl48nzuylz2lduwbu/IZp321eDyg60P4X8RLtKsu53VbAwL7AHiAtipjtXfpM+qi
qNImGhk7EYSKJ114BouctyVKdETP+Xnh3L9eRzbIPCzv2V5GuD42fyBBUMQlOMVI
tSFgtDsq6s2vi3Ze4Jwwo1Y9DUv38Qo/S/633sL+YwJ2L5ALyfCHSIhX8BieC+Hk
+3dQGKZ/xEVpfSmQRFPbE/3NywEWG35I1qZC9sSPCqJgmA/uaZE2Z1SFBt7i0R6S
4oCwMa6Za0iAz1c9mI0pBLBt6kq+
=OUPU
-----END PGP SIGNATURE-----

--Sig_/TG=8ak+vUoWFeJjR/HB5HNo--

--===============4537962973394183735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============4537962973394183735==--
