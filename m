Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA6A9AFF
	for <lists@lfdr.de>; Thu,  5 Sep 2019 09:01:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 309A31571;
	Thu,  5 Sep 2019 07:00:39 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81E06E56
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 07:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E82477DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 07:00:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Sep 2019 00:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,469,1559545200"; d="scan'208";a="199219751"
Received: from brenneis-mobl.ger.corp.intel.com (HELO localhost)
	([10.252.36.138])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2019 00:00:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>
In-Reply-To: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
Date: Thu, 05 Sep 2019 10:01:26 +0300
Message-ID: <87o8zzw7jt.fsf@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, 03 Sep 2019, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> I think some of the push-back to the GPU people wasn't from them not
> inventing the group maintainership like Dave said, but from that being
> presented as some kind of "this is the way to do it". When it's just
> _one_ way to do it, and other groups have completely different
> infrastructure and models..

At least I've tried (and likely also failed) to merely describe what we
do, what works for us, how we think we benefit, and how it just might
benefit others. It's just sad when the pushback is strong enough to
discourage people from sharing their experiences to begin with.

I know I've reduced talking about it outside of the GPU people bubble.

> And "it has to be visible on a public list for review, and for
> lore.kernel.org to archive the discussion, because things need not
> just review, but _outside_ review" is pretty obvious for any big
> changes.
>
> But even that second "obvious" thing equally obviously cannot be
> applied to _every_ patch. Even if you ignore the special embargo
> cases, you just have a lot of patches that are local fixes, rather
> than big new features. We can't tell people "you can't fix an obvious
> bug without having it reviewd on the mailing list first". That would
> be frustrating any sane developer if we tried to make that a hard
> rule. So even the "obvious" workflow that we all think about for big
> development simply can't be some kind of "this is how it must be done"
> rule.

Okay, I'll stick my neck out again.

In i915 it *is* a hard rule you can't push anything unless it was posted
and reviewed on the public list and passed CI first. No exceptions. Sure
it can be frustrating, but it's also so much less embarrassing when the
bug in the obvious fix gets caught in review/CI rather than in
mainline. And you tend to work on improving your process instead of
making more exceptions and taking shortcuts.

And since I'm one of those pesky "GPU people", YMMV a thousand times
over. ;)


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
