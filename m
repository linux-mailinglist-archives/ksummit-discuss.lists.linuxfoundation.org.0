Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5427BAD86B
	for <lists@lfdr.de>; Mon,  9 Sep 2019 14:02:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 78850104A;
	Mon,  9 Sep 2019 12:01:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1AF0D1023
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A122B81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 755658EE180; 
	Mon,  9 Sep 2019 05:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1568030479;
	bh=IHj4BWpJu+oYjS6RjhRvMc6RI/KfEcB+XNrYfEBsT10=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hhEkBE6T7NVd4s62xqix/ENI2/mj0KuKKeiTY2knAn0dMfO2fRZWbJYj5Rg3WmBGz
	rNNSFAGNAiy3mL7TT83XRvA4c7j+wYiWD11C54XVjYaZhdxgBqui+82T392/eO2CWu
	3zGcNcn83ttG8+WpZQpWHYioKFjZ3SLeO6UNbcU8=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id QD5l7HVy6KF4; Mon,  9 Sep 2019 05:01:19 -0700 (PDT)
Received: from [192.168.6.117] (unknown [148.69.85.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 70B938EE105;
	Mon,  9 Sep 2019 05:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1568030479;
	bh=IHj4BWpJu+oYjS6RjhRvMc6RI/KfEcB+XNrYfEBsT10=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hhEkBE6T7NVd4s62xqix/ENI2/mj0KuKKeiTY2knAn0dMfO2fRZWbJYj5Rg3WmBGz
	rNNSFAGNAiy3mL7TT83XRvA4c7j+wYiWD11C54XVjYaZhdxgBqui+82T392/eO2CWu
	3zGcNcn83ttG8+WpZQpWHYioKFjZ3SLeO6UNbcU8=
Message-ID: <1568030467.6613.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 09 Sep 2019 13:01:07 +0100
In-Reply-To: <20190909115338.GD2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
	<20190909115338.GD2036@sirena.org.uk>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
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
Content-Type: multipart/mixed; boundary="===============7852026667734524279=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============7852026667734524279==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Xs8hKXvDJJdvu72OLvfE"


--=-Xs8hKXvDJJdvu72OLvfE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-09 at 12:53 +0100, Mark Brown wrote:
> On Mon, Sep 09, 2019 at 11:44:15AM +0100, James Bottomley wrote:
>=20
> > I haven't really found corporations attempting to apply pressure to
> > get their patches merged as is, although I've heard of others
> > having this
>=20
> I've definitely faced this in various forms, mostly coming from
> companies in the embedded space.  It feels like it's got better
> over time as companies have become less prone to going on
> substantial out of tree adventures but it's still there.
>=20
> > problem.  My usual problem is that the creator of the patch is
> > deeply wedded to their design and doesn't want to change so it's an
> > individual rather than a corporate issue.
>=20
> That's often a corporate problem as well, if the company has a
> big investment in whatever approach or codebase they have they
> may not want to spend the time on substantial rework.  Often it
> seems fairly clear that the people doing the upstreaming have
> inherited something from other engineers rather than having done
> the design and original implementation themselves.  In my more
> embedded experience I'd say that the corporate investment is a
> more common issue than developers.

Actually, I find the inherited code part easier because usually the
person pushing it isn't wedded to someone else's design and is happier
to do a rework because it makes it more their code.  My biggest problem
has been with the original author trying to push their design as the
only possible way and then trying to bring corporate pressure to bear
when it became clear this wouldn't be accepted.

> I'm not sure I have any particularly bright ideas other than
> being clear with people about what the issues are and asking for
> clearer explanations of what's being done and why it's different
> to everything else.

Trying to explain that it's a maintenance and consistency issue more
than anything else does seem to help.

James

--=-Xs8hKXvDJJdvu72OLvfE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABMIAB0WIQTnYEDbdso9F2cI+arnQslM7pishQUCXXY/AwAKCRDnQslM7pis
hR/OAQDaZX7p4mTdWA0ghBFYQle4QaVEA4StZ3iggg3i9j1NAQEAulE128qCtOB6
VJjGe6F9xy4q4HI4hP2WcygPq0mapdY=
=neI9
-----END PGP SIGNATURE-----

--=-Xs8hKXvDJJdvu72OLvfE--


--===============7852026667734524279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7852026667734524279==--

