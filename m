Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFE6550B39
	for <lists@lfdr.de>; Sun, 19 Jun 2022 16:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB50A6059E;
	Sun, 19 Jun 2022 14:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB50A6059E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216 header.b=mMBxgGQm;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216 header.b=mMBxgGQm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LN_2pPT3qPY2; Sun, 19 Jun 2022 14:45:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 00A3160ACD;
	Sun, 19 Jun 2022 14:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00A3160ACD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7EC97C002D;
	Sun, 19 Jun 2022 14:45:05 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26172C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DED4B60ACD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DED4B60ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmpTU96zDLgx
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:45:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2951F6059E
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2951F6059E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655649902;
 bh=fJPkA62fgfmVs/hnWivoF8CBXeslkpEcdFD+ZdmddaQ=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=mMBxgGQmsvYHNWd4cVgKSkFpJ1z/PVH1OyirYT/gApRENG76gWVe6uSkYlmJ6oCgS
 nqzOSO/A9g6Yz1O7mAJrhvquOGJYy3PShnJUa4sMIbhakP2ljVPuEVB4eD1GvUcXGM
 smqEZQ9Sk8ink4Bd1+JdCOaoNhR7CwRA1oZUrYLY=
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 366DD128070E;
 Sun, 19 Jun 2022 10:45:02 -0400 (EDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id ZLRBT9mTDAVj; Sun, 19 Jun 2022 10:45:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655649902;
 bh=fJPkA62fgfmVs/hnWivoF8CBXeslkpEcdFD+ZdmddaQ=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=mMBxgGQmsvYHNWd4cVgKSkFpJ1z/PVH1OyirYT/gApRENG76gWVe6uSkYlmJ6oCgS
 nqzOSO/A9g6Yz1O7mAJrhvquOGJYy3PShnJUa4sMIbhakP2ljVPuEVB4eD1GvUcXGM
 smqEZQ9Sk8ink4Bd1+JdCOaoNhR7CwRA1oZUrYLY=
Received: from [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b] (unknown
 [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 779B31280402;
 Sun, 19 Jun 2022 10:45:01 -0400 (EDT)
Message-ID: <ca6243160b36aa42f4d0ad23853b84e57ca366f1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Jens Axboe
 <axboe@kernel.dk>
Date: Sun, 19 Jun 2022 10:45:00 -0400
In-Reply-To: <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
 <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
 <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: Christoph Hellwig <hch@infradead.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] Are we becoming too fearful?
 [was Re: [TECH TOPIC] Rust]
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

On Sun, 2022-06-19 at 10:27 -0400, James Bottomley wrote:
> On Sun, 2022-06-19 at 16:53 +0300, Laurent Pinchart wrote:
[...]
> >  Whether it's worth the gain or not is not for me to decide,
> > but I'm certainly concerned that it could lead to a catastrophe if
> > we don't carefully think about the issues, acknowledge them, and
> > find ways to solve them. I don't think winging it is a real option
> > here, but I'd be more than happy to be shown that my concerns are
> > not founded :-)
> 
> Have more faith in the community and open source process. We've
> screwed up many times (devfs anyone ...) learned from the mistake and
> fixed it. I'm happy to bet that accepting Rust will be no different
> from all the other screwups we allowed in and later fixed.  So I
> don't think there will be a catastrophe.  Either the rust experiment
> works or it will become fairly quickly apparent if it doesn't and it
> will get removed.  The worst case, I suppose, is that the benefit is
> marginal in which case there's no consensus on removal vs
> continuation and we simply continue through inertia.  I bet in that
> situation Rust penetration will be fairly minimal and confined to
> enthusiastic subsystems with the rest taking steps to isolate
> themselves from it.  What we'd need in this case is some opinionated
> person running the tree and able to make the call for us ... now who
> could that be?

I think there's a growing problem in Linux which is exemplified by this
Rust debate but which goes way beyond it: We're becoming too fearful of
making big decisions to sustain innovation in some areas.  This really
is a creeping cancer of inertia that has destroyed many projects before
us and if we're not careful, we'll go the same way.

The biggest area where we currently squelch innovation is around
anything that touches the user space ABI.  Allegations of having to get
everything right ab initio because we have to support it "forever" and
all the subsequent wittering and second guessing are really stifling
innovation in pretty much anything that could be exposed to user space.
I really think, to counter this, we need a crash course reminder of all
of our mistakes and how we climbed out of the hole they dug us into,
because without that we're becoming too fearful of making mistakes.

The object is not to avoid mistakes at any cost, it's to be confident
that if you make them, you're good enough to find a pathway out of them
again.

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
