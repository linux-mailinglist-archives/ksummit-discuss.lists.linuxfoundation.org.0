Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D2660AC4
	for <lists@lfdr.de>; Fri,  5 Jul 2019 19:10:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68270F97;
	Fri,  5 Jul 2019 17:10:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0FE6F7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 17:10:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E2C587B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 17:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Resent-To:
	Resent-Message-ID:Resent-Date:Resent-From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Sender:
	Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=TTj76IS8pD8NhMNKPh5o8n610oGvOSiaLadIk1LuRcc=;
	b=h
	7fBdRA6DgxrkvmWsQNsbvdQfSFCLSGjnRsavhq2Kq4quQz0CkKbpHKY/Iu5zwE4YwUIaEWDjjdt41
	2YQyKevl6MyvfkfLBX04s/yEpKRi8IwmGlcM1gL27E8dLKAsJGw0zmwVqegTsIFLJZuVk36kCZFS3
	S4OQfRyAN0oKXNBM=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <broonie@sirena.org.uk>)
	id 1hjRjI-0004Y4-Jx; Fri, 05 Jul 2019 17:10:36 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id B4D002742A68; Fri,  5 Jul 2019 18:10:35 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.org.uk>
Resent-Date: Fri, 5 Jul 2019 18:10:35 +0100
Resent-Message-ID: <20190705171035.GD20625@sirena.org.uk>
Resent-To: Sasha Levin <sashal@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 5 Jul 2019 17:41:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190705164142.GC20625@sirena.org.uk>
References: <20190703013557.GQ11506@sasha-vm>
MIME-Version: 1.0
In-Reply-To: <20190703013557.GQ11506@sasha-vm>
X-Cookie: How you look depends on where you go.
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
Content-Type: multipart/mixed; boundary="===============1457612162522779048=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============1457612162522779048==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FsscpQKzF/jJk6ya"
Content-Disposition: inline


--FsscpQKzF/jJk6ya
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 02, 2019 at 09:35:57PM -0400, Sasha Levin wrote:

> - Concerns about how well -stable kernels are tested.
> - "Fixes for fixes" end up being missed.
> - Saner AUTOSEL process.

I'm a bit worried about these, especially pushed together - one
of the things the AUTOSEL stuff does quite often is pull in
driver changes and our coverage of drivers is especially weak.
When a person has explicitly flagged something for stable it's a
still risky but the automation adds that extra level of
uncertainty.

--FsscpQKzF/jJk6ya
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0ffcUACgkQJNaLcl1U
h9AJQAf9ECE7j9MUy7ownZPtwh/yl/Lie5OQ09HucdzE74lAEtzeOeicw6UcY1XJ
8mB/BVio3nqWGO89srAhub9ogOJmxz25BEVpW+g6dP/4oEQjFpOSgjoR1UUFnP+u
biyXc941MdoqXdtwjfBYOfy85cDYFDPTdj20P8ZsKQpK/6iswC4PDVzUm0fif2CJ
fR66mUWNEp0qSRqdoH2cPmzvL6KlAMZYxs4Wx+L73S+akVjQ+PqtIHmh8GYzyCTF
9m7dheiuDfO7FHHWZukcLjVjtyKQIGuzslJOtzXb7y47Mzs93Fmba4q7f3oXX3K3
hi2y/SYNAFw59uOvxWftCS1/Vgm+6g==
=ZKU3
-----END PGP SIGNATURE-----

--FsscpQKzF/jJk6ya--

--===============1457612162522779048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1457612162522779048==--
