Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF7E6125B
	for <lists@lfdr.de>; Sat,  6 Jul 2019 19:24:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EF5DB1DF3;
	Sat,  6 Jul 2019 17:24:31 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5146A1DE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 17:17:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0C6E987C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 17:17:25 +0000 (UTC)
Received: from localhost (p5486CF0A.dip0.t-ipconnect.de [84.134.207.10])
	by pokefinder.org (Postfix) with ESMTPSA id 247A64A1463;
	Sat,  6 Jul 2019 19:17:25 +0200 (CEST)
Date: Sat, 6 Jul 2019 19:17:24 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20190706171724.GA12534@kunai>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
MIME-Version: 1.0
In-Reply-To: <20190706165214.GB18182@mtr-leonro.mtl.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
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
Content-Type: multipart/mixed; boundary="===============2126533522560575491=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============2126533522560575491==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Leon,

> > 2) Reviewed-by should have a description of the review done (and the re=
view not
> >    done)
>=20
> IMHO, this path of thinking will lead us to less reviews due to an extra
> work and wouldn't bring an extra quality which we want.

I'd argue that this extra work is needed in the same way a good patch
description is needed.

> Right now, everything is built on trust and it will continue to be after
> we will demand to add extra sentence. It means that we don't fully trust
> in Reviewed-by of one time contributors now and we won't trust in their
> description of their Reviewed-by either.

Per default, I do trust a new contributor to have done the review. I
don't want this extra sentence as a proof of that.

The "problem" with a new reviewer is that I don't know if all aspects of
a patch have been reviewed or just a subset. Actually, this holds true
for people I do know just the same way. If a get a Rev-by from Linus
Walleij I am extremly sure the GPIO parts have been throughly checked.
But I still don't know if he had time to check e.g. the locking or not.
There is a huge difference if I get three plain Rev-by or three Rev-by
saying "I did check <xy> but not the media parts".

Thanks for your feedback. I think this clarification was important.

Regards,

   Wolfram


--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0g16AACgkQFA3kzBSg
KbYe8g/6A4+2glAgxv7C0LlU+R0gSK2PG9oKUZpEffFZgK5Pfn3GGJpRROrXyn1H
dypTyCbivToekeNXZznWyP20vyZnc5iYIcO1ju7orbvNlwgTQDjBFVd4JxAe3iZd
sVmNz4FYWjsGH4Sa4FwPbLZB2ulCvyOfdAPHVN9uU3NSuVSCvHVbrkAfQxRdR5Ol
Yw3+TrRWdlaQPQGvwmKyBmqj3qJ+nEeaWDRzXWOoDpypiznCXI6fqyX5zzFPI949
E73658WhT9rl+ntvVv+78LLdR2faG9G3hJfo0SuedBl45ZuJfkF4kk6PgqF9uH/H
s9LbaJ4ynuD/n59aBFeYBgRR1oFbzrVO2lWoLL/QK1GTmltyq5ZLvXIStEaJG/z+
DqcPLOClcFlxRMcQaq6DLWENybYAiRJVrXkRpBkOzLGlA58TwyPmNVd4eXVTv43W
PA9Y+Us95qKDGIYQ1+sBlFembSG7p2S9i2BKmt31nzdXGj7nVSQx9nVrNCN1GKSw
h12Bzft+4dsEVLMBN5oNlj77rsOjcpnx+FMIycXBjh1KOcmgHlUjutNUVuZFrGrC
/w/TwryJzHNJbcNehbUTuQnpCGNK4FVr4QMN4/RXpO11zQVOka62sbxEQLf5pSw4
SUXCEfygsDW9mvPeROQNP+6Dcbunng98nO71Jq+r3BbrkLgQrb0=
=Dx9v
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--

--===============2126533522560575491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2126533522560575491==--
