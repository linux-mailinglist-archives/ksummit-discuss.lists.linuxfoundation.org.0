Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B588215341
	for <lists@lfdr.de>; Mon,  6 Jul 2020 09:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95DF686B57;
	Mon,  6 Jul 2020 07:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9rz9Eo1WNk1S; Mon,  6 Jul 2020 07:22:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56B3B86B76;
	Mon,  6 Jul 2020 07:22:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1200DC08A0;
	Mon,  6 Jul 2020 07:22:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67D2FC016F;
 Mon,  6 Jul 2020 07:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FFCF86B2D;
 Mon,  6 Jul 2020 07:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2_NUCXLrMliF; Mon,  6 Jul 2020 07:22:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E070D86B26;
 Mon,  6 Jul 2020 07:22:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F7EE2073E;
 Mon,  6 Jul 2020 07:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594020140;
 bh=gKp3g1bxO6Epz5NAk4E1pJBvKl8b9XpmYD9Xk7Fl920=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JufFr+0gHoxadzahDRSG2gCHqcnRkW9pANK7oExJ2xVU52xIpdQrekouQAcCKjgaQ
 sDnOhnay4RY9Cr2KqMaxtiOdZiD6lDATCvh5sj7aTD059yzyR3+F+qBrD5zfxSsTa7
 PvX18zdzs4ZNYFThXfTSDqlIgQwKo/nhtEkbLRZU=
Date: Mon, 6 Jul 2020 09:22:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20200706072221.GA1947246@kroah.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7ul15le.fsf@notabene.neil.brown.name>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 linux-kernel@vger.kernel.org, tech-board-discuss@lists.linuxfoundation.org,
 Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Mon, Jul 06, 2020 at 05:10:37PM +1000, NeilBrown wrote:
> On Sat, Jul 04 2020, Matthew Wilcox wrote:
> 
> > Another suggestion for "slave" replacement should be "device". This is in
> > the context of the w1 bus which is by far the largest user of the
> > master/slave terminology in the kernel.
> 
> Ugh.  Please, no.  "device" doesn't mean anything, in that you can use
> it to refer to any thing.  (i.e. it is almost semantically equivalent to
> "thing").

Context is everything, you can have a "controller" and a "device" that
the controller controls.  These are common terms in many specs today,
look at the USB spec for an example of these terms being used in this
way for many decades.

So while the term might be generic, like the word it is replacing, it
makes sense when used in the context it will show up in, so it is a good
replacement in many instances.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
