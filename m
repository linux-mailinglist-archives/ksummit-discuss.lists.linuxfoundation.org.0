Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A60EA69DD
	for <lists@lfdr.de>; Tue,  3 Sep 2019 15:29:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 774CBD7D;
	Tue,  3 Sep 2019 13:29:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76057D12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 490A3831
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:38 +0000 (UTC)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
	[209.85.160.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A360681DE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:37 +0000 (UTC)
Received: by mail-qt1-f200.google.com with SMTP id 38so18984109qtx.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 06:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Hp099ggX/mbKFuNEkMbXrvvf2KCKnHfBrXzwOT7+d+k=;
	b=eykQ45m3YyLw4V+SqUKM05LxWiqvdvtgxm3HvFhMVqb/PopHLeDDMuInILm09STOII
	WKoY6IyumpYAHFdL7RPe3GRqTCeYarYjlYX72b1o7dVcexWbFIiWR6DyiKUmoJTQ/P+5
	lPNdtlr0MxEuH2CSohT18TSUMTwiiBZjsRd/jYdzETl11K0tpmRAxw/PVo4ZaPsr1oIP
	gHPQA3Wsak9jmQaXpqVO04Mz4ciPfzCrec6p9Jr+YUwKkHOcoV8x2+nYCqGWZbO7vJV2
	dZnQBdgxTuqI0MkgIY8C3r78xTmjJ+GYLdou7nbiPo7tfjOzbmdVUGX0L0ZcNsB/UUNg
	AcqQ==
X-Gm-Message-State: APjAAAWFmlPOP3oPaW0sxgQyviETEHYfpt+LKYiynPGvuVT1mdL+Thyp
	FU3fgxgUQGv/FYr7m4GvIDGoTO9J4Qx/QnFsdipQGMtjFEkEODg7W8IjaPbNke9gEY0mr5Aq+wG
	skRx5GwkdSSDJTHHzCtlm/IiqYxmduf9w3q/doOpnrQ==
X-Received: by 2002:ac8:2450:: with SMTP id d16mr10920474qtd.309.1567517376496;
	Tue, 03 Sep 2019 06:29:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzI36e3fmeqjDXs9b56RV+2k2wy3sE/ZGjPO+VhwemcY80jrztsZd+iTMvKqrwAZ2Qr7l0JAQ==
X-Received: by 2002:ac8:2450:: with SMTP id d16mr10920451qtd.309.1567517376222;
	Tue, 03 Sep 2019 06:29:36 -0700 (PDT)
Received: from [10.195.149.170] ([144.121.20.163])
	by smtp.gmail.com with ESMTPSA id
	l16sm7937178qtr.37.2019.09.03.06.29.35
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Sep 2019 06:29:35 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Dave Airlie <airlied@gmail.com>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
Date: Tue, 3 Sep 2019 09:29:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902222240.GE3367@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 9/2/19 6:22 PM, Theodore Y. Ts'o wrote:
> On Tue, Sep 03, 2019 at 06:42:55AM +1000, Dave Airlie wrote:
>> On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:
>>
>>> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>>>> ...
>>>> Are there some additional topics that you'd like to suggest that we
>>>> discuss at the maintainer's summit?
>>>
>>> I don't have an effective workflow for managing incoming patches.  I
>>> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
>>> to put patches on topic branches, review them, polish them, merge them
>>> together into a "-next" branch, generate pull requests, etc.
>>>
>>> I wish there were a collection of the workflows and scripts people
>>> use, maybe even in the kernel sources so they could be shared and
>>> improved.  Some short screencasts could help visualize and pull things
>>> together.  I know a lot of this stuff is "out there" somewhere, but
>>> I'm not aware of any organized collection.
>>
>>
>> These are quite drm specific but they do mean myself and Daniel can operate
>> seamlessly, and all i915 and drm misc maintainers and committers use the
>> same enforced workflow. We hope to move to gitlab at some point and may try
>> and use the same interface or not.
>>
>>   https://drm.pages.freedesktop.org/maintainer-tools/index.html
>>
>> Happy to give more info at maintainer summit, but we have gotten negative
>> feedback in the past from some community members who wanted to point out at
>> length that drm didnt invent group maintainership first, i still have no
>> idea of the relevancy of the comment.
> 
> Are there are other people who have interest in sharing their
> workflow?  I'm wonder if it might be useful to schedule time during
> the kernel summit, so it's open for more people to benefit from this
> sharing?  (Also note that Kernel Summit track sessions will be video
> taped for posterity, while Maintainer Summit discussions are *not*
> recorded.)

It's great that we can share these workflows but it still feels like a
bit of an anti-pattern that we even _need_ to do so. The problem is
everyone has their own 'pet' workflow and while you can certainly
adopt one, I think we're at the point where we do need something in
common for all workflows for the sake of automation (see the number
of testing topics that are about automation)

Maybe part of this discussion should be if we can't mandate a single
workflow, what parts of a maintainer workflow should be common for
the benefit of everyone?

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
