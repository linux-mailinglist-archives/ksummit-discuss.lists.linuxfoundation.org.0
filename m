Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B8A60E4D
	for <lists@lfdr.de>; Sat,  6 Jul 2019 02:34:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50DEA14A3;
	Sat,  6 Jul 2019 00:34:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E53A104A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 00:32:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F25E54C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 00:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r8vvKUFLf/n0EeNFOM4Cv28U0VcY/9BToQG8f/zyFLw=;
	b=MRwQrtaUdXaG+JrE0/WbELeE4
	QEPXqXwOYB6+5gCJMJJB5tf0odYFvWD7wCw0ItA9Hw7GxQmm8rfppUShxqGmMO3qsvkIhqcA9tjrt
	scSC6KlR7NgOo9VSvy+SWpr+t7urXEGXAIs2p0Q0Jv93CduCyde9QSpcwMOjaCvCgXf8k=; 
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
	([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <broonie@sirena.org.uk>)
	id 1hjYcg-0005Gg-Rl; Sat, 06 Jul 2019 00:32:14 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 379482742A55; Sat,  6 Jul 2019 01:32:14 +0100 (BST)
Date: Sat, 6 Jul 2019 01:32:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190706003214.GE20625@sirena.org.uk>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
MIME-Version: 1.0
In-Reply-To: <20190705201231.GI10104@sasha-vm>
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
Content-Type: multipart/mixed; boundary="===============2881984233247387130=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============2881984233247387130==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EP0wieDxd4TSJjHq"
Content-Disposition: inline


--EP0wieDxd4TSJjHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 05, 2019 at 04:12:31PM -0400, Sasha Levin wrote:
> On Fri, Jul 05, 2019 at 05:41:42PM +0100, Mark Brown wrote:

> > I'm a bit worried about these, especially pushed together - one
> > of the things the AUTOSEL stuff does quite often is pull in
> > driver changes and our coverage of drivers is especially weak.

> Our driver coverage is indeed weak, but I don't think that the solution
> is to leave drivers/ alone. On the contrary, I think that making
> drivers/ move quickly together with the rest of the kernel will
> encourage vendors to up their testing game.

I'm not saying leave it alone, it's more a question of how
aggressive we are about picking up things we think might be
relevant fixes but haven't had some sort of domain specific
analysis of.  Testing is a good way to mitigate the potential
risks here.

> This came up in the last MS, and the agreement there was that we expect
> stable kernel users to test their workloads before throwing it into
> production.

That's kind of the problem - if people are doing testing and end
up finding problems coming back in the stable kernel that's the
sort of thing that encourages them to not just take stable en
masse as we say they should.  Part of the deal with stable is
that it is conservative, people can trust it to be a low risk
update.  That's not happening now as far as I'm aware but it does
worry me that it might happen.

> If we were to start avoiding driver updates, it would act as an
> incentive for people not to upgrade their kernel.

I'm not sure I follow the logic here?

> Right now I'm working with a certain hardware vendor who does a crappy
> job at tagging fixes for stable, and it's horribly painful. I end up
> spending time triaging a bug, reporting it to the vendor, only to be
> told "oh grab this fix from upstream".

> This user experience is just bad, and I can't imagine how difficult it
> is for users who are less familiar with the kerenl.

Well, the advice from the upstream community has always been that
you should track upstream and I'm sure people will be praising
this vendor's upstream focus but obviously that's not always
terribly helpful or realistic for production systems.  In my
(mostly embedded and consumer electronics based) experience
support for older kernel versions is generally part of the
commercial discussion with the hardware vendor, there's an
understanding that the hardware will only get bought if it works
on kernel versions that are useful to the customer or (depending
on the power relationships) that the customer will use kernel
versions that the vendor supports.  Sometimes, especially for
smaller customers, that doesn't work out but those are usually
the people who are more likely to track upstream and/or do
considerable testing before fixing a version and generally are on
their own.

This is where the out of tree patch stacks from vendors come from
- everyone agrees that they'll use one or more given kernel
versions, enterprise distros or whatever and then the vendor
commits to supporting what's agreed but often that doesn't just
include bug fixing but also new features (or entirely new bits of
hardware).  As a result those vendors are shipping their patch
stacks out of tree, users are getting their bug fixes from there
and those vendors are not finding much user demand for vanilla
LTS as a separate thing.  They may even find conflicts with it an
annoying hassle.  Frankly for them upstream support is often a
bit of an investment in reducing the cost of future out of tree
patch stacks and giving a longer general market life to products
rather than something customers directly demand.  None of this is
ideal from an upstream point of view of course but it does
function for people.

It sounds like somewhere along the line this process has come
unstuck for you and you have a vendor that's not aligned with
what you need but I don't think that's quite the same question
as the issues with pulling patches into stable without either
testing coverage or direct identification of an issue by someone
with domain knowledge which is what I'm worrying about.

--EP0wieDxd4TSJjHq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0f7AoACgkQJNaLcl1U
h9ANfAf9FKRAX8V9HDjdY1VXePn75DdbyxkQIqfnuzLgMOMhcaHKoztNfza01UN/
FWMvwFrX9hxWkcHptSMCy8wi1o6l3ES5tQVIhXKrEgMZElWeZoswEaFuKo0DsNoP
Bffuoh+VvWPuYzkjCCFDG2Wot7ZhB++52pcahNPequOQ5mWlcfWmLxvwHXmZbFu3
fzo9t1jR4dsFsRA8DfOllc8s+y0VNMkmsK7T3mEo1t0UxRHC8iMp5etJfVj+RT6s
c3tJtHdvDC3hssvwzbbF0ZGKPyZwMuaNZBX4fNd0KgUZw0pPc++mfh9szzT1FAB6
o+8jjr3QDo7kG6iar+0jZmymgEy0SA==
=/Ie0
-----END PGP SIGNATURE-----

--EP0wieDxd4TSJjHq--

--===============2881984233247387130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2881984233247387130==--
