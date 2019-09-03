Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F004A720A
	for <lists@lfdr.de>; Tue,  3 Sep 2019 19:57:30 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0E794E38;
	Tue,  3 Sep 2019 17:57:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C55AF49F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:57:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 544E97DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kH9gvWQe0D3BqmZ+ThEaMySMY8URo0PL51j8+G6dWmg=;
	b=JeTNnGEGDXTFrh858QwBFhUvV
	RSZDZLOOEhyjirI1bZwVWCyoFVLTNXTaJEgJsyb85HkBaDtdc2TFpJUxF859lkLV5BPST9WKvmPcp
	huLtIPaYxXVA3JwqYQAY8bxnOSlsGBEW6PerB3x2kRV/+00CEHl51KLni1DGRoPSV8DY4=; 
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1i5D3I-0000y9-Vb; Tue, 03 Sep 2019 17:57:13 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 35C6C2740A97; Tue,  3 Sep 2019 18:57:12 +0100 (BST)
Date: Tue, 3 Sep 2019 18:57:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>, Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20190903175712.GE7916@sirena.co.uk>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
MIME-Version: 1.0
In-Reply-To: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
X-Cookie: You will pass away very quickly.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
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
Content-Type: multipart/mixed; boundary="===============8513566202044497716=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============8513566202044497716==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6Vw0j8UKbyX0bfpA"
Content-Disposition: inline


--6Vw0j8UKbyX0bfpA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 03, 2019 at 01:27:08PM -0400, Konstantin Ryabitsev wrote:

> For quite some time now I've been trying to fund some client-side tooling
> development around public-inbox (the software that drives lore.kernel.org).
> Eric Wong (the principal author of public-inbox), and I have had lengthy
> chats about potential functionality of such tool, and what we envision can
> be described as "local patchwork with a mutt-like interface":

This all sounds incredibly useful, I'd be super happy to see it - the
initial proposal does a lot of what my existing scripting does.

--6Vw0j8UKbyX0bfpA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1uqXcACgkQJNaLcl1U
h9CnEwf/VMXrhJzCRKk9BpG91KWW6W0M5A+kU4Pt0U44rRDe0ahizZ2eno9Q0Wq7
m1NAnkXvCErQNLUiWdu0/RxB9iQYC9G5P8iRM7Nd70r6j8B6ipUAyC/XRahCZ5zT
FLQvqml9JEuJ+/rrEiKR9sOFPS4vfI5sjyW0WMhDmwSP5E5tovB4v2Yxd1S4oTt7
zEcusSUwO/lobdshQcT2oTL+fXlc0VaWXL/pS7zCP8AZptvqo84A6sokmz6K+4C6
921URV3BvaWc2DYymvUNg9H4857/KARlmtzCPhbIGwWBj7bv7tv79wO18gVgZE+X
CM7pORxenWWnAg+d+OK495AjayT6Dg==
=8Tng
-----END PGP SIGNATURE-----

--6Vw0j8UKbyX0bfpA--

--===============8513566202044497716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============8513566202044497716==--
