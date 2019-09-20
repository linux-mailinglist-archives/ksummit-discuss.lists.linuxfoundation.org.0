Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 95555B90C3
	for <lists@lfdr.de>; Fri, 20 Sep 2019 15:38:10 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 805BDBBC;
	Fri, 20 Sep 2019 13:37:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F12A5B7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 13:37:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B892711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 13:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RGGcGz63F/LO9/lTeXtRYFLIUlWCG7iT8+MfNVQ2XyU=;
	b=a8dqsKbML9N49j911R7nfMNAQ
	k0eL30ltdONEv8DpDFZ/bkuNetqCvAPgLa7rnEpKYwUifdMULBVMhlvY3DbqiB4qbHw0x3hUUO88Y
	oMVwHmTyy+3vo9x273Iworn9PstKMINyqGnK52aPG8Bl77yJe2GE7hpFusMdkqbq7OKdc=; 
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
	([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1iBJ6T-00028S-Dc; Fri, 20 Sep 2019 13:37:41 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 9AC67274293F; Fri, 20 Sep 2019 14:37:40 +0100 (BST)
Date: Fri, 20 Sep 2019 14:37:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robherring2@gmail.com>
Message-ID: <20190920133740.GF3822@sirena.co.uk>
References: <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
	<CAL_JsqJTpA68gAkT2k5ziHF8RbVsmKcf2ZLTGSexPkrwL6Vkzg@mail.gmail.com>
	<CABhMZUXq5Qy4seNYfc_0CDz=jqhB0kUgL2+dNxWq84=VcpPQOA@mail.gmail.com>
	<CAL_JsqLOKUszUNWGf0PzmKbFoUd0ZVUKztg4+5jcJ8u-ezbjfg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLOKUszUNWGf0PzmKbFoUd0ZVUKztg4+5jcJ8u-ezbjfg@mail.gmail.com>
X-Cookie: Stay away from hurricanes for a while.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
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
Content-Type: multipart/mixed; boundary="===============6478371697324574582=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============6478371697324574582==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l+goss899txtYvYf"
Content-Disposition: inline


--l+goss899txtYvYf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 03:52:34PM -0500, Rob Herring wrote:

> A somewhat design goal I had was to not tie this into mutt too much.
> About all I have is a git am key binding, but now I usually apply
> using 'pwclient git-am' so a I get the tags. That's one thing that
> doesn't work offline. Not a big deal for me as most things go thru
> other maintainers. I just leave anything I'm applying pending and go
> thru them again when online. It wouldn't be too hard to just download
> all the patches from patchwork up front and then use that to apply
> patches.

What I've been doing with that is saving to a mailbox and then having a
script that goes through and looks up the messages in the mailbox when
I'm back online.  If I decide I want to actually apply things while
offline I just do the tags by hand.

--l+goss899txtYvYf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2E1iMACgkQJNaLcl1U
h9BbQwf8CFp0FdQXfMXhdz7U2iVhC6x31kTMEiAaiMN5To7ChTXEofXiv9VKzCIo
oMoA0zIFXTwlYhl+qRy7AaesJ13BtAnELLEIcppNl3jZuQ0UVvEvZhfBa38tZ2Ke
8aX5OuCNlB12Ry1wPo4xUoPcalWWXobPzCe8L88U4OcilBkua2smjOU93NxVeb3h
SzVA+lGWKASCKzTxfbM6dYmZyNeB5QMiSty+E/uAbXyLovvh8DJ9b9H2pfC7udjs
goLTKNQToPAAz8sdjS5dINQCZXLRwoznDfSxNIdFfG2jRhbi4xpyNj1owRbztNzr
WZ9M5uAe8ilyf+7NG+yjbDBH8buD5w==
=q7IP
-----END PGP SIGNATURE-----

--l+goss899txtYvYf--

--===============6478371697324574582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6478371697324574582==--
