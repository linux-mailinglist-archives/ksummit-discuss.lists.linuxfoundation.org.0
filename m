Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A7958AD851
	for <lists@lfdr.de>; Mon,  9 Sep 2019 13:53:58 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 70AD2FF6;
	Mon,  9 Sep 2019 11:53:45 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ADCB6FD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 11:53:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9196A7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 11:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=72u5afEGLtEa3pFGePV2LhLNlWtn/YrMdsgEgmE0bNY=;
	b=TYNc9tUG4Um23+ewYbOUv9I8/
	+cM0WaJXGQis4Oiz6sOLn7EAW+TlXL6zP2jNVR32gzkvh1R2WW/sN3etmXqBYGDX6FUAJsVpsIBvr
	QRsOKZhNFYhG9FVI9kOpB2Jqmj/E2v5FLi19IzVdGMpMIOKESZ8xj3HhHQ8T5ABBdWvBs=; 
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1i7IEl-0002F0-3t; Mon, 09 Sep 2019 11:53:39 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 6FCD5D02D18; Mon,  9 Sep 2019 12:53:38 +0100 (BST)
Date: Mon, 9 Sep 2019 12:53:38 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190909115338.GD2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
MIME-Version: 1.0
In-Reply-To: <1568025855.6613.5.camel@HansenPartnership.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
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
Content-Type: multipart/mixed; boundary="===============6248331854136570955=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============6248331854136570955==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DrWhICOqskFTAXiy"
Content-Disposition: inline


--DrWhICOqskFTAXiy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 11:44:15AM +0100, James Bottomley wrote:

> I haven't really found corporations attempting to apply pressure to get
> their patches merged as is, although I've heard of others having this

I've definitely faced this in various forms, mostly coming from
companies in the embedded space.  It feels like it's got better
over time as companies have become less prone to going on
substantial out of tree adventures but it's still there.

> problem.  My usual problem is that the creator of the patch is deeply
> wedded to their design and doesn't want to change so it's an individual
> rather than a corporate issue.

That's often a corporate problem as well, if the company has a
big investment in whatever approach or codebase they have they
may not want to spend the time on substantial rework.  Often it
seems fairly clear that the people doing the upstreaming have
inherited something from other engineers rather than having done
the design and original implementation themselves.  In my more
embedded experience I'd say that the corporate investment is a
more common issue than developers.

I'm not sure I have any particularly bright ideas other than
being clear with people about what the issues are and asking for
clearer explanations of what's being done and why it's different
to everything else.

--DrWhICOqskFTAXiy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12PT4ACgkQJNaLcl1U
h9AZ6wf7BKya2b9zNvqhob+lVdcgUS5ro1a96F5+QQas2/PU5r8w/9qg3SsJeXUq
sTbmg8GcdPCsPBqqcOSKIGc9VNoJH5bPiEzMNd+AczRmyVJaok7PqhKKSHa6psUy
TqYNCDtWD10JDcPkerpByTbRLCmwHiuXFchbE+o6zccwI6M/8MvrFxgqEoAPTVEo
y8DBncf6o6dLOztbFgAZOoj0mizFep7iW/gtPdJCow8e73mtvpsbuH186A9R1Wn2
RdyP97TXwa/OOUWRH7s8nBN07ZNJSHRhLm2MxXlbTHB1asohFevRTRHQmATcB1JE
vBEmrcXyGV2BWg2JV156xeVd5Ls8Cw==
=gKRr
-----END PGP SIGNATURE-----

--DrWhICOqskFTAXiy--

--===============6248331854136570955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6248331854136570955==--
