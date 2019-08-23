Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A38049A45E
	for <lists@lfdr.de>; Fri, 23 Aug 2019 02:43:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 56069FCD;
	Fri, 23 Aug 2019 00:43:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 184DBFB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:43:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A6AB7FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:43:35 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w16so5148955pfn.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=cy0X3UIHVXg/W5oBKB5PCQyxMbfJbN+P8v9DDJ8FjSI=;
	b=GS/C0oxx28GWugltT4cleh4n17JzDBIFlbR2vm+aqmpNIFkipgf6p68YO3diCAZe3X
	znxDJxl8ojj8WdQvOEKZBcKK44OZ7pRE2VwsBXOWayFmFiELJytaDuz/jO20/+/syM0e
	f5VnYc+lLX8HJoYnFsweQn10NWsPYaOTfu6EordAl7aPzVu97S7zzWYeAdVM5DdOriTj
	sVkjmS5y3aMGdfkIcRqoFmq38UQa5VixHq0Q87qXyONEbdLw01LpjOWCdKy9MLRwkRM9
	Wlia5gss4PNVWk/wAM+E2Oq4UyUD6KPoFY+7hHxs/ejCAy0le14i5KKpuSLctbL2YxQC
	pEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=cy0X3UIHVXg/W5oBKB5PCQyxMbfJbN+P8v9DDJ8FjSI=;
	b=H03Wx2m5/kh9BIG3tWC92Z2ldM3ryjfPkRfQgwChYd9bwfdIq2WD+ipGkEd8BeFLJy
	9Kqa3YyxifwIkYhgcrCNxDp8UoCybzBH/8t/U9IKeqS2ONzP73oADcP+kitFK9rLjr7V
	JQHZbGvh0Y1ZyOkyT4VuMDs2IVVtWp3sMYoSXUJ9y37MtIdC3IgBW26qSoOb6KqJIa5J
	HkK5lqWvRLPVf+IFvC+J2yVHQFMPLSz19MTujJIPAqkUofzW0Qj9LdtoXH/MgG4ZjH5n
	w3hb4PI3aO+6HEnve4lGsxVJb0wCzL8qvHzTIDhrJPe4lPM6Ma9y4cHnFOCwnMY/15xw
	V+PA==
X-Gm-Message-State: APjAAAWSZvkt8Ml2w/Gmsyx3vp5uvAZxcTSHr+YEW54p/pz6/f3qtbAZ
	Cel9eSVmZrDomNE02rqJEHo=
X-Google-Smtp-Source: APXvYqwRUyewUumnQ1VayyqCedz/3mfeo/bhKK3cCMkCkds/HwX7fawPTF/plDS53pdD74ncTOvx5A==
X-Received: by 2002:a63:7a06:: with SMTP id v6mr1645645pgc.115.1566521015085; 
	Thu, 22 Aug 2019 17:43:35 -0700 (PDT)
Received: from server.roeck-us.net
	(108-223-40-66.lightspeed.sntcca.sbcglobal.net. [108.223.40.66])
	by smtp.gmail.com with ESMTPSA id i9sm411721pgg.38.2019.08.22.17.43.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Aug 2019 17:43:34 -0700 (PDT)
To: Olof Johansson <olof@lixom.net>,
	Linus Torvalds <torvalds@linux-foundation.org>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
Date: Thu, 22 Aug 2019 17:43:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
Content-Language: en-US
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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

On 8/22/19 5:30 PM, Olof Johansson wrote:
> On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>
>> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
>>>
>>> The Linux kernel has always viewed these Change-Id tags as obnoxious
>>> and useless spam.  Anyone who accidentally leaves a Change-Id in their
>>> patch when posting to the mailing list is told to please re-post their
>>> patch without the Change-Id.  In this email, I will attempt to argue
>>> that the Linux kernel ought to relax this restriction and allow
>>> (possibly even encourage) Change-Ids.
>>
>> No.
>>
>> Not without some ground rules.
>>
>>> To begin with, let me make sure we're on the same page about what
>>> Change-Ids are.  As I understand it:
>>>
>>> * A change ID is much alike a UUID.  It is locally generated on a
>>> developer's computer and is (in theory) unique across the universe.
>>
>> Completely irrelevant.
>>
>> The point of an UUID is not just that it's unique, but THAT YOU CAN
>> LOOK SOMETHING UP USING IT!
>>
>> A "change ID" that I can't use to look anything up with is completely
>> pointless and should be removed from kernel history.
>>
>> But if you have something unique that is actually useful for looking
>> things up, then by all means. But it needs to be useful for
>> _everybody_.
>>
>>> * When a developer keeps the same Change-Id across two patches they
>>> are making the assertion that the two patches are either the same or
>>> should be treated as two versions of the same logical change.
>>
>> .. and we have better ways to do that.
>>
>> For example, we are actively encouraging things like message ID's
>> (which are _also_ a form of locally generated UUID, they just are more
>> than the silly purely numerical one).
>>
>> That gives you the origin of something, but it also gives you the
>> development history and context.
>>
>> But note that how when it comes to message ID's we encourage them in a
>> form that actually also helps look that information up, ie the
>> preferred form isn't just the message ID (although that exists), it's
>> a link like
>>
>>      Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
>>
>> instead of
>>
>>     Message-ID: 20190723065733.4899-5-leon@kernel.org
>>
>> even though technically they have just as much actual information in theory.
>>
>> Do you see people complaining about that kind of UUID? No.  Because it
>> gives useful information to the project, and when something happens,
>> people can look things up and _use_ that kind of UUID.
> 
> For the actual open projects, the answer to this might be relative
> easy: Most gerrit instances can feed a mailing list with emails of
> both the initial patch, and later comments.
> 
> Said emails would obviously have a Message-ID, and if the list is
> added to lore, it can be referenced there.
> 
> Note, even if the Change-Id had a full URL, there would be no archival
> guarantee in the same way as lore gives us, so that approach alone
> isn't useful. A URL to a "forever" mailing list archive seems like the
> most stable possible reference.
> 
> This doesn't address the full issue Doug was looking to solve, which
> is the reverse mapping of "posted patch" to "previous version of the
> patch". Patchwork tries to guess this, but it's best effort. I don't
> have a great answer to this, besides possibly in-reply-to threading
> and associating back that way via the email trail.
> 

Wouldn't a direct link to the Gerrit instance solve the problem ?
After all,

Link: https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1759334

points to the same Gerrit entry as

Change-Id: I5a2e33424e7fb19fed13afb854ae6546ef9bfa35

and there would be no need to look anything up.

Guenter
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
