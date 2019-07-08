Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BD6620F8
	for <lists@lfdr.de>; Mon,  8 Jul 2019 16:57:14 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DC36F2730;
	Mon,  8 Jul 2019 14:57:00 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E03B8272C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:50:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F69C892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=syA8uOg3/ijk3UkuxUV7tkuWHceNzkPd4rod//K+6Ew=;
	b=iz9BYEY2aS9Smn8N4qG03hSCC
	z8x2bJ8fnbKqZJI+49cuX0JCFGRbS2i3jxRPhaKLpvlYwpmcUQzasM10uZYtiV+QOuWy4uawxcPpy
	LX5cLgMDa8E7c7I4vvENzSO1KgkGT8ia+5ZQZLQpij9qp7c161A/v+SAo0NeftuFvKwnA=; 
Received: from [217.140.106.53] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hkUyc-0000Zp-2r; Mon, 08 Jul 2019 14:50:46 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 20DE9D02C61; Mon,  8 Jul 2019 15:50:45 +0100 (BST)
Date: Mon, 8 Jul 2019 15:50:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20190708145045.GC12731@sirena.co.uk>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
X-Cookie: If anything can go wrong, it will.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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
Content-Type: multipart/mixed; boundary="===============1432932103695308888=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============1432932103695308888==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Uq4LBwYP4y1W6pO"
Content-Disposition: inline


--/Uq4LBwYP4y1W6pO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 08, 2019 at 07:05:44AM -0700, Guenter Roeck wrote:
> On 7/8/19 5:37 AM, Mark Brown wrote:

> > I'm not sure how many people will actually report problems they
> > experience upstream rather than just fixing things locally and
> > just moving on.  The more code is the more likely it is that one
> > of the users will report things.

> I for my part will most definitely report any such problems, since each
> regression in stable releases is used as argument against merging
> stable releases (even if the regression rate is negligible), and I am
> very interested in getting that regression rate as close to zero as
> possible. Reporting each and every regression is an essential part
> of that.

Me too - but I'm pretty sure for example most of the product
teams I've worked with at consumer electronics companies would
never even consider it.

--/Uq4LBwYP4y1W6pO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0jWEQACgkQJNaLcl1U
h9D2vAf/TjmD74RUlK02nLSeYCy9cG9kGrvMHZIBi/RZtgqgEKzQTOt55WRx9pUk
KDjgXtW1pRHk7qs9oaPpP/aLuDm/flVngp8vv+lRvICNVIQJuX7YFqaKthcXSO7W
z8G0+NVyUfE1YKR3YquwZ6HGQQmi6FkXbvOmrupRR061LRVKarSni6XkQ6XN6nRg
/z3sDzBGsZEBjYpU+hMgAzYgDf0Ui3tUltoLKSX8I9MoEa+WM3/wnXVqI/IV7pOn
1LZmUtcR8vXEYiBAIiKnX6P3rsVBnyQgN0QMcC9QARw8Km63fvqtlsWvhKH41gle
nWcEreKid5q5UkjuQY+XylGPxDkmbA==
=8IVb
-----END PGP SIGNATURE-----

--/Uq4LBwYP4y1W6pO--

--===============1432932103695308888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1432932103695308888==--
