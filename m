Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8405F7E5
	for <lists@lfdr.de>; Thu,  4 Jul 2019 14:22:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F2ABC10EC;
	Thu,  4 Jul 2019 12:22:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ACF8610EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 12:22:06 +0000 (UTC)
X-Greylist: delayed 00:06:41 by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F33270D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Jul 2019 12:22:05 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45fcPN5cWCz9sPB;
	Thu,  4 Jul 2019 22:15:20 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Thomas Gleixner <tglx@linutronix.de>, Takashi Iwai <tiwai@suse.de>
In-Reply-To: <alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
Date: Thu, 04 Jul 2019 22:15:18 +1000
Message-ID: <87y31eov1l.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
	commit logs?
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

Thomas Gleixner <tglx@linutronix.de> writes:
> On Sat, 29 Jun 2019, Takashi Iwai wrote:
>> On Fri, 28 Jun 2019 22:51:03 +0200,
>> Luck, Tony wrote:
>> > That captures for posterity the useful information without
>> > bulking up the commit log with the blow-by-blow deltas of
>> > how the patch series evolved across 27 versions submitted
>> > to the mailing list.
>> 
>> Agreed.  And I'm thinking whether we may have come consistent tag
>> for following the post discussions on ML archive.  Then the detailed
>> descriptions can be dropped from the changelog, and readers can still
>> follow easily.  e.g. the patch version change can be simply a
>> reference URL.
>
> This tag exists today:
>
>      Link: https://lore.kernel.org/lkml/MESSAGE-ID
>
> my 'grab patches from list' scripts insert that tag automatically and it's
> part of the commit changelog in git. That allows you to just jump to the
> mail archive of the merged submission.

If you've got the link back to the mailing list archive, do you also
need Cc: tags in the change log?

It's always seemed to me they don't really add any value, they just tell
you that lots of people were Cc'ed on the patch and probably didn't have
time to review it :)

A couple of Cc: tags is no big deal, but sometimes they can get a bit
out of hand, eg. below.

cheers


commit 3599fe12a125fa7118da2bcc5033d7741fb5f3a1
Author: Thomas Gleixner <tglx@linutronix.de>
Date:   Thu Apr 25 11:45:22 2019 +0200

    x86/stacktrace: Use common infrastructure
    
    Replace the stack_trace_save*() functions with the new arch_stack_walk()
    interfaces.
    
    Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
    Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
    Cc: Andy Lutomirski <luto@kernel.org>
    Cc: linux-arch@vger.kernel.org
    Cc: Steven Rostedt <rostedt@goodmis.org>
    Cc: Alexander Potapenko <glider@google.com>
    Cc: Alexey Dobriyan <adobriyan@gmail.com>
    Cc: Andrew Morton <akpm@linux-foundation.org>
    Cc: Christoph Lameter <cl@linux.com>
    Cc: Pekka Enberg <penberg@kernel.org>
    Cc: linux-mm@kvack.org
    Cc: David Rientjes <rientjes@google.com>
    Cc: Catalin Marinas <catalin.marinas@arm.com>
    Cc: Dmitry Vyukov <dvyukov@google.com>
    Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
    Cc: kasan-dev@googlegroups.com
    Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
    Cc: Akinobu Mita <akinobu.mita@gmail.com>
    Cc: Christoph Hellwig <hch@lst.de>
    Cc: iommu@lists.linux-foundation.org
    Cc: Robin Murphy <robin.murphy@arm.com>
    Cc: Marek Szyprowski <m.szyprowski@samsung.com>
    Cc: Johannes Thumshirn <jthumshirn@suse.de>
    Cc: David Sterba <dsterba@suse.com>
    Cc: Chris Mason <clm@fb.com>
    Cc: Josef Bacik <josef@toxicpanda.com>
    Cc: linux-btrfs@vger.kernel.org
    Cc: dm-devel@redhat.com
    Cc: Mike Snitzer <snitzer@redhat.com>
    Cc: Alasdair Kergon <agk@redhat.com>
    Cc: Daniel Vetter <daniel@ffwll.ch>
    Cc: intel-gfx@lists.freedesktop.org
    Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
    Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
    Cc: dri-devel@lists.freedesktop.org
    Cc: David Airlie <airlied@linux.ie>
    Cc: Jani Nikula <jani.nikula@linux.intel.com>
    Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
    Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
    Cc: Miroslav Benes <mbenes@suse.cz>
    Link: https://lkml.kernel.org/r/20190425094803.816485461@linutronix.de
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
