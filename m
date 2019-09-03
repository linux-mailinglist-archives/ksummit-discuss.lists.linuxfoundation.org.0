Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE4BA5F83
	for <lists@lfdr.de>; Tue,  3 Sep 2019 05:05:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ABCC3C86;
	Tue,  3 Sep 2019 03:05:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48C3AC6D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 03:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFFB9887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 03:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
	Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vahKSLXcANMPHibD3fSu/VrLI7vzN/9ny+LCPOYIMso=;
	b=Kip1kef14hVDJJLETu/FNA8Ut
	nwHdOPTbKko62JINMgntex29sFFXOmwu4oMHnTzWFkxT3ksOZwj7fj9hrmLzooEHHN1m1RiLklOIM
	OfkSQdnkUxwgPdG2e6YZEDA4KYg+6o3b4bVtNCjcVVJtwhH+OedqhdA2Dx7hIt4RodbMuybntqd7i
	15UMHqKTEAxnzyvobMzZ2T/A1a/WrLoTB4aZVL8TGFf3XY0LKm52HctUN8pa4ikzVGJRWmig2KQKe
	xel2O/C5pF/BR20VzjhBNDlyXWWnc9zgCmL+VIJOR8t2+c3EVKTDPHm0/iI26AI5JwG/xwu/w8JEG
	YbxqI0tDA==;
Received: from [2601:1c0:6200:6e8::4f71]
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i4z83-0002RF-Ew; Tue, 03 Sep 2019 03:05:11 +0000
To: Olof Johansson <olof@lixom.net>, "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<CAOesGMgOhknM8eZDv+Tr+0C6+ekm7DfxU5GdfW8Zop6Ryq-Kyg@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <d8103fae-1012-bdff-e7bd-4e32ceb26cb2@infradead.org>
Date: Mon, 2 Sep 2019 20:05:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMgOhknM8eZDv+Tr+0C6+ekm7DfxU5GdfW8Zop6Ryq-Kyg@mail.gmail.com>
Content-Language: en-US
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
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

On 9/2/19 7:35 PM, Olof Johansson wrote:
> On Mon, Sep 2, 2019 at 3:22 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>
>> On Tue, Sep 03, 2019 at 06:42:55AM +1000, Dave Airlie wrote:
>>> On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:
>>>
>>>> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>>>>> ...
>>>>> Are there some additional topics that you'd like to suggest that we
>>>>> discuss at the maintainer's summit?
>>>>
>>>> I don't have an effective workflow for managing incoming patches.  I
>>>> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
>>>> to put patches on topic branches, review them, polish them, merge them
>>>> together into a "-next" branch, generate pull requests, etc.
>>>>
>>>> I wish there were a collection of the workflows and scripts people
>>>> use, maybe even in the kernel sources so they could be shared and
>>>> improved.  Some short screencasts could help visualize and pull things
>>>> together.  I know a lot of this stuff is "out there" somewhere, but
>>>> I'm not aware of any organized collection.
>>>
>>>
>>> These are quite drm specific but they do mean myself and Daniel can operate
>>> seamlessly, and all i915 and drm misc maintainers and committers use the
>>> same enforced workflow. We hope to move to gitlab at some point and may try
>>> and use the same interface or not.
>>>
>>>  https://drm.pages.freedesktop.org/maintainer-tools/index.html
>>>
>>> Happy to give more info at maintainer summit, but we have gotten negative
>>> feedback in the past from some community members who wanted to point out at
>>> length that drm didnt invent group maintainership first, i still have no
>>> idea of the relevancy of the comment.
>>
>> Are there are other people who have interest in sharing their
>> workflow?  I'm wonder if it might be useful to schedule time during
>> the kernel summit, so it's open for more people to benefit from this
>> sharing?  (Also note that Kernel Summit track sessions will be video
>> taped for posterity, while Maintainer Summit discussions are *not*
>> recorded.)
> 
> Sharing workflow sessions are a repeating theme, but I think there's
> still a good amount of interest in them since things change over time,
> and there's always a lot to learn from how others deal with things.
> 
> I've found that sharing exact tool suites tends to be hard, people are
> often comfortable with the pile-of-scripts they have. But there's
> still value in seeing how others have solved things, and borrow ideas
> or pieces of the workflow.
> 
> Steven's ktest that's in the kernel tree is a good example -- I like
> the idea, but it didn't do quite what I needed, and it was easier to
> just roll my own back when I first looked at using it. It doesn't mean
> others won't reuse it 100%, and it doesn't mean it's not a good idea
> to share them.
> 
> I agree that it's probably a great idea to do on the wider KS forum
> instead, for wider audience. Maybe a BoF-style talk with show-and-tell
> and/or others also showing what and how they do it is useful?

Please just make sure that it is recorded for non-attendees to be able
to make use of it.

-- 
~Randy
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
