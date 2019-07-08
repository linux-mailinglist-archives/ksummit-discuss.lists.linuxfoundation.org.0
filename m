Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E88B862121
	for <lists@lfdr.de>; Mon,  8 Jul 2019 17:06:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F2A3027A4;
	Mon,  8 Jul 2019 15:06:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92EBC2752
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:57:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F7DB892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mm6aVkH/dT/BvJ/eD59+vFBzM1CtS/SFRl1mr1pmR8s=;
	b=ncVT7DUD6xjW5YaWvYa5GGwWY
	FZmAxU6W7K+d1tcr7IC9UgAQLUVZEk8pb6P/4e0SxPypDzqrMe7ARsJVhXaR1Q8wTHprTOdC5zeor
	AhA4V5ZBXjhfihglUCB1kegIeNdxa8BXFyGOavnZLZITVOCkkssmVqp/WtBiquxByrioE=; 
Received: from [217.140.106.53] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hkV58-0000ae-Kw; Mon, 08 Jul 2019 14:57:30 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 03197D02C61; Mon,  8 Jul 2019 15:57:29 +0100 (BST)
Date: Mon, 8 Jul 2019 15:57:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190708145729.GD12731@sirena.co.uk>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
X-Cookie: If anything can go wrong, it will.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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
Content-Type: multipart/mixed; boundary="===============6798237646572157561=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============6798237646572157561==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fXStkuK2IQBfcDe+"
Content-Disposition: inline


--fXStkuK2IQBfcDe+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 08, 2019 at 01:21:49PM +0200, Geert Uytterhoeven wrote:

> I have a fifth thesis: many people (incl. guilty me) browse quickly
> through many patches flying by on mailing lists, but don't always go to
> the effort of replying if they don't see something wrong immediately.
> This means we don't catch a share of the reviews happening.

Right, and it's also a lot easier to review in the negative ("I
found a problem!") than it is to review in the positive and say
you're confident that something is OK which means that even with
more thorough reviews there's a bias against reporting.

--fXStkuK2IQBfcDe+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0jWdkACgkQJNaLcl1U
h9B9qwf/baAkUmz0E66/oJMiLMIUv6KHzC3uC0CRcYAKtVwBV8NT3pyfAcDYDe6V
vpVjmjnDlZ7eZ7TWcCEiGajnDXohZlJiG7HPlAvr0RTco8KwX+65WnySS0scz9OZ
Tlipiv26X/6B2E8Oe50oQx5Qm7i+GCmnkAt1rAhonCFvLgkFKMU7Jzkkpis8I+sk
DpWAnNC5hAhLgNJeJQTCRVVGcI8GyF9DqLNdMNHW0GoaHVq81UOSqFCR4mnTofR4
sW7nDCfa4hC+eZogyJiq+zjeSNce535xppknYcEDCFDtZCd+8xe9FsCO0BptMZHn
WI1e5Rxg5nGyMq7yl51s8BE2J2iDxQ==
=TVxU
-----END PGP SIGNATURE-----

--fXStkuK2IQBfcDe+--

--===============6798237646572157561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6798237646572157561==--
