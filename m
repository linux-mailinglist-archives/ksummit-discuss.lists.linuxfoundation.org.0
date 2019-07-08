Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2FF61F65
	for <lists@lfdr.de>; Mon,  8 Jul 2019 15:16:08 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 244F525D6;
	Mon,  8 Jul 2019 13:15:53 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73A162599
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 13:08:47 +0000 (UTC)
X-Greylist: delayed 00:31:11 by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1869826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 13:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Tm4UAGn5hyUnaH7Bl/XVjhWL1nWbLTpY8C8LZYVbTG8=;
	b=w1Ae+uqCvvJX7DF4M+IQYm6Q3
	BEcSfBOdf43Qf7wYGlYmUAuXMs2xCkWdzvgujqs96WYg3s72nF/UCxfhwnlpmvUrSLtd3lOLbaN2/
	iBuHSBvJOMOkLEgMVNUdiRGGZHKG3CLzYZ8E6Z6QVrd/gk5dWEKrwvvyhDAcdTxgFLdeA=; 
Received: from [217.140.106.54] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hkSth-0000Rk-SE; Mon, 08 Jul 2019 12:37:33 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 5DF1DD02D72; Mon,  8 Jul 2019 13:37:33 +0100 (BST)
Date: Mon, 8 Jul 2019 13:37:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190708123733.GC8576@sirena.org.uk>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
MIME-Version: 1.0
In-Reply-To: <20190708110208.GN10104@sasha-vm>
X-Cookie: optimist, n:
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
Content-Type: multipart/mixed; boundary="===============8173860291122477566=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============8173860291122477566==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NKoe5XOeduwbEQHU"
Content-Disposition: inline


--NKoe5XOeduwbEQHU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 08, 2019 at 07:02:08AM -0400, Sasha Levin wrote:
> On Sat, Jul 06, 2019 at 01:32:14AM +0100, Mark Brown wrote:

> > I'm not saying leave it alone, it's more a question of how
> > aggressive we are about picking up things we think might be
> > relevant fixes but haven't had some sort of domain specific
> > analysis of.  Testing is a good way to mitigate the potential
> > risks here.

> I agree, and for various subsystems and drivers where the maintainers
> volunteer their domain specific expertise to send backports to stable, I
> have "blacklisted" it from AUTOSEL since indeed it's a much better
> option.

Hrm, it's definitely getting a bunch of stuff for my subsystems
where I do tag things for stable...

> > > This came up in the last MS, and the agreement there was that we expect
> > > stable kernel users to test their workloads before throwing it into
> > > production.

> > That's kind of the problem - if people are doing testing and end
> > up finding problems coming back in the stable kernel that's the
> > sort of thing that encourages them to not just take stable en
> > masse as we say they should.  Part of the deal with stable is
> > that it is conservative, people can trust it to be a low risk
> > update.  That's not happening now as far as I'm aware but it does
> > worry me that it might happen.

> Right, and the rate at which AUTOSEL commits are reverted is lower than
> commits that are actually tagged for stable. If AUTOSEL commits on their
> own were being reverted left and right I'd agree we need to tone it
> down, but I don't see it happening now.

I'm not sure how many people will actually report problems they
experience upstream rather than just fixing things locally and
just moving on.  The more code is the more likely it is that one
of the users will report things.

> > > If we were to start avoiding driver updates, it would act as an
> > > incentive for people not to upgrade their kernel.

> > I'm not sure I follow the logic here?

> The way I see it, the lower your "effective delta" is between to
> kernels, the easier it is to move forward. For example, if I have a
> product that runs on 4.19 and uses all our core kernel code + 10
> drivers, and I know that those drivers had most of the fixes backported
> to my LTS tree, I'd feel much more confident going to 5.4 knowning that
> I already have most of the patches that come with 5.4.

I see, that's definitely a new one to me.  The concerns people
usually have about upgrading are more around the core kernel
changing performance characteristics or something in a way that
disrupts important workloads.  I'm not quite sure I follow the
logic there TBH, it seems to be discounting new development
rather too much - even if the drivers have been very static
there's all the integration with the rest of the kernel to think
about.

> For me it's a matter of how one would budget a move from a kernel X LTS
> to kernel Y LTS, and I think that as that budget requirement grows it's
> actually harder to actually do it (and convince management), acting as a
> negative incentive to stay with whatever works now.

If the drivers are static enough to only be getting bug fixes
surely the rest of the kernel is a massively more substantial
concern?

> I have a different experience with this. I'd like to think that we're a
> bigger customer and this process wasn't working too well for us. My
> thinking was that if it's broken for us I can only imagine how bad it is
> for the smaller customers.

...

> This is where our story is different, which might explain my experience
> being different: we usually require vendors to upstream everything, and
> so they do. This means we don't have much of a out-of-tree patch
> stacks/fixes from the vendor directly, and we expect to pick up patches
> via the regular stable process, and that didn't happen all too well so
> far.

That sounds like they didn't pick up on the bit about getting
things through LTS.  This sounds like a pretty unusual request
for a vendor to be getting, it doesn't 100% surprise me that
it might take a few goes for them to understand what you're
looking for, or that you're having a worse time than most users.
For enterprise type stuff AFAICT people are expecting people to
get their stable versions from distros rather than raw LTS.

--NKoe5XOeduwbEQHU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0jOPUACgkQJNaLcl1U
h9Dtbgf/bXUHvpwFrCPFMtLugEstTM/+gcE59RibKB6n+tq2ElVlr0tn5VufLae4
a2JCIIGmu1wSLGK6s37+KZcRz8Lzp9M8vz+Q3zI6pR08DdqShIYO2A6Lq/Dqkeg2
iQV55HhGOrJvEbxa0ixhh1EuePEWo5FgSb2qiflmZMu4htkU3soX6mCU/6eUp2+b
Nff3s+h7FHQQ06l7rDJ/cLV4vhBzGgLsUxfATwIaFMU8BOhotMchGKp6XY//HtPz
fH8KXA3SURWy21oNLNWzHvlpZqu51GzWHcfzXIeCB+mSENtbgzhebNxCYHUox21U
VWZhNDPfvgcvu5zhjii4lGv6g/gTAA==
=unKh
-----END PGP SIGNATURE-----

--NKoe5XOeduwbEQHU--

--===============8173860291122477566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============8173860291122477566==--
