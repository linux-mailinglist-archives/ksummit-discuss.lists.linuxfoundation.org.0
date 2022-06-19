Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC6C550B07
	for <lists@lfdr.de>; Sun, 19 Jun 2022 15:54:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC8B960B78;
	Sun, 19 Jun 2022 13:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC8B960B78
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=Nk3YLsex
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4D13CWu0z24m; Sun, 19 Jun 2022 13:54:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D9FB660E1A;
	Sun, 19 Jun 2022 13:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9FB660E1A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 65572C002D;
	Sun, 19 Jun 2022 13:54:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 432CAC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A30882662
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A30882662
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com
 header.a=rsa-sha256 header.s=mail header.b=Nk3YLsex
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86-PQSnBdGFT
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:54:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D56F82505
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D56F82505
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:54:03 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 77DBD929;
 Sun, 19 Jun 2022 15:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1655646840;
 bh=kuC/E2bK5/gMdnllqOGcBs05Zn1QrQugrkGuWV6JzaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nk3YLsexRJvdu58rIGs3scVp0D2/GRyjC1vrjJw3S18p5KPFi0EIJMQ/TUff2WdQY
 H+E9jYEJzo3X2AzDTHLh+CJbq8bh/99NKZmXQhhERwmH5Kv7qG/lgIhvOjxX9VmkgD
 swQffBQOpluXqc3pXTAsJ1TKud7VyoYl2Fz8TwyA=
Date: Sun, 19 Jun 2022 16:53:46 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
 Christoph Hellwig <hch@infradead.org>, ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Sun, Jun 19, 2022 at 07:19:38AM -0600, Jens Axboe wrote:
> On 6/19/22 6:56 AM, James Bottomley wrote:
> >> One point I'd like to explicitly address, as it seems to be very
> >> relevant to me when it comes to whether or not the pain is worth the
> >> gain, is how we'll deal with the fact that the rust compiler will
> >> tell a non-negligible [*] part of the kernel developers that they
> >> don't have the skills to write kernel code. Will we have a credible
> >> option to offer there to help people improve their skills set, and
> >> how will we deal with the fact that some people will be left on the
> >> side of the road ? Or would we acknowledge what may be the elephant
> >> in the room that this would actually be a good thing for the kernel
> >> code quality ? What about the impact on a community that is already
> >> overworked and prone to burn-out ?
> >>
> >> [*] I have no way to quantify this at the moment, maybe I'm overly
> >> pessimistic, and the number will likely vary depending on areas,
> >> probably impacting BSPs differently than mainline.
> > 
> > I don't think that's a huge concern.  After all rust isn't going to
> > penetrate every subsystem all at once ... and realistically it will
> > only penetrate some subsystems if there's the ability to review it.
> > 
> > I really doubt anyone at the maintainer or reviewer level of the kernel
> > doesn't have the ability to learn rust (now whether they have the
> > desire to is quite another matter) and I'd be surprised if we can find
> > any kernel developer who only speaks C.  I think the biggest problem
> > with rust is that there's definitely an anti-C bias in the language. 
> > What I mean by that is if you look at Java they chose to be as close to
> > C where possible to make the language easier to learn.  Rust seems to
> > have taken the opposite view and picked a lot of things which could
> > have been C like (typing, function calls, returns, mutability, etc.)
> > and done them differently just because they wanted to be different from
> > C.  That does cause issues for C people because you tend to trip over
> > the anti-C biases in the language and are constantly having to look the
> > basic syntax up.  This really increases the learning curve going from C
> > to rust, which gets annoying very fast, but it's not insurmountable.
> > 
> > All that said, I expect once we start getting rust based patches, it
> > will quickly become apparent where the rust receptive subsystems are
> > and I would expect reviewers in those subsystems will quickly become
> > rust fluent.  This doesn't answer the pain vs gain aspect, but I
> > suspect we won't know that until we actually try.
> 
> FWIW, I agree with you here, James. And I have to say that the original
> sentiment expressed here by Laurent is weirdly elitist, and not
> something that seems positive if that's the case. I'd suggest
> re-calibrating that mindset...

I'm not sure about the elitist part, but it's certainly not a positive
statement. I'm concerned about the pain that rust in the kernel would
inflict. Whether it's worth the gain or not is not for me to decide, but
I'm certainly concerned that it could lead to a catastrophe if we don't
carefully think about the issues, acknowledge them, and find ways to
solve them. I don't think winging it is a real option here, but I'd be
more than happy to be shown that my concerns are not founded :-)

> Some subsystem maintainers are pretty much spread as thinly as they can
> be in terms of workloads, while other subsystems are less active and
> supposedly have more spare cycles on their hands. Some handle multiple
> subsystems, some subsystems are tiny, some are huge. All of this will
> impact both the motivation abd ability to adopt rust.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
