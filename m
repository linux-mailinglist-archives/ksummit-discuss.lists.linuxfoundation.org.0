Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E72329EA4C
	for <lists@lfdr.de>; Tue, 27 Aug 2019 16:01:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CD00D159B;
	Tue, 27 Aug 2019 14:01:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5FED1591
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:01:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C4FF88E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:01:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so12753655pgj.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 07:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=x0ojl9fs13UcLA7dcx3gqKMB/5hrbtnOkgxxiR3uLmQ=;
	b=czGGSILe5n+IeE/ulsunj/Rw+4fd4GUxmmybvz7jpPoZbASSAZ7dbIJIBVmVDHvkZl
	KlQf5mflDx0U++LB08Yc2sU9gCKbI64JF0WTR7J6lhWYswWqZz0HlnXgQurTVi+nH88l
	qIezTuwePxUwRrTXFAiTDmelNic4MTm3NB3/veuzoLSvOkpkUn534YAWy5uuTojdVZZI
	f7J77OR/d6mKpkTKwBOBkv1FX7F8WV0uKLgCOw7Oy4BKORKs82qFP3zWQsao32TV43bp
	PKg53sjPG4JswyRFnATmQjqTWX7maHT8KR2rGG634vnkp1Q9wgFPSx9d7XFJrKHQAbOP
	RrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=x0ojl9fs13UcLA7dcx3gqKMB/5hrbtnOkgxxiR3uLmQ=;
	b=WKCr5t0qBKBhqcmv9C0AqUEbNCvlIRP6zCspnfmj699aUP8oMCQa24A06lpVvbGzIl
	zr5bmrNF+Vfk2ZtLW4J4nye3tycOk9YXNIptrtC+q5l0Q287CQQlcJyM7Yu4yRNBjxI1
	Yo3egcCb9+bORqQtu24s7j3e9MEKefW3WOfNzW2yESeDNcz7P0eaH3CGhqGjv3s1mrAu
	vsJDUrxMW6594Z5GzNMj6z3TyKPPQKgIbacrTtP8ddMXNvyGGdrYNKMY61OGTY9ngvP6
	cdLdJRRZbSYnQ4Uw4Wc3yQsl4JI00PIrBSU8QsEsvMceMTYH3Fyqj4LxK0WlSU3GQ8Jm
	H9fw==
X-Gm-Message-State: APjAAAV28LD+PCC3apHvmnwvZ+mwVVHTdirkZVZiZvvgOL/7v1O86H/a
	T1M5om+E6j5Aw52CTRiYe8+m6iPd
X-Google-Smtp-Source: APXvYqxOLl1xylHhjopAQW01Ypx+lagc3zfleQsSA8X4LOlk4fPN1a5UoFhslZUznhuFiZkEg8agqw==
X-Received: by 2002:a17:90a:1202:: with SMTP id
	f2mr24756387pja.39.1566914489979; 
	Tue, 27 Aug 2019 07:01:29 -0700 (PDT)
Received: from server.roeck-us.net
	(108-223-40-66.lightspeed.sntcca.sbcglobal.net. [108.223.40.66])
	by smtp.gmail.com with ESMTPSA id
	e189sm13729732pgc.15.2019.08.27.07.01.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Aug 2019 07:01:28 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
Date: Tue, 27 Aug 2019 07:01:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827134836.GB25038@kroah.com>
Content-Language: en-US
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
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

On 8/27/19 6:48 AM, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 06:24:36AM -0700, Dmitry Vyukov wrote:
>> On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>>>
>>> On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
>>>> A somewhat related point re UUID/Change-ID.
>>>> For syzbot (or any other bug tracking system) we want to associate
>>>> bugs with fixes. It turned out there is no good identity of a change
>>>> that we could use. Commit hash is an obvious first thing to consider,
>>>> but (1) it changes in linux-next, (2) sometimes the change is not
>>>> committed yet when we do the association, (3) it is different when
>>>> backported to LTS (so not possible to say if a fix is in that stable
>>>> tree or not).
>>>> We decided to use commit subject, which works to some degree, but also
>>>> has problems: (1) not necessary unique, (2) sometimes people change
>>>> subject during backporting (e.g. prepend some prefix), (3) has all the
>>>> same problems of email clients messing with text (e.g. I can't issue
>>>> #syz fix command for loo long commit subjects with my email client).
>>>> Some real UUID/Change-ID would solve all of these problems by giving
>>>> us capability to refer to changes rather than a commit in a particular
>>>> tree only.
>>>
>>> If we adopt the Link: ..../$MSG tag widely then you have a UUID.
>>
>> Is there a way to ensure that everybody will generate right IDs
>> (ChangeID-Version) and then a link in canonical form will be included
>> into commit? As far as I understand this is not possible with the
>> current kernel tooling, as this aspect is not under control of any
>> unified tooling.
>> I see different maintainers use links to different archive web sites.
>> Also sometimes Link is present for other reasons (e.g. link to bug
>> report).
>> The link will need to be added by every developer (rather than
>> maintainer) so that it's available before the change is committed
>> anywhere.
> 
> For subsystems I maintain, I am already adding the Link: tag to
> lore.kernel.org with the message id in it.  That is automatically added
> by my scripts.
> 
>> Though, most of these are problems for any other change identification scheme...
> 
> Note, we have 4000+ developers every year, it's hard enough to get them
> all to agree on major things, let alone crazy stuff like this :)
> 

Is it really that crazy ?

I have to use a combination of subject analysis and patch content analysis
using fuzzy text / string comparison, combined with an analysis of the patch
description, to answer a simple question: Is this patch upstream, and what is
its upstream SHA ? Having a UUID tag would make this a simple and
straightforward operation. What is crazy is having to do all this analysis.

Guenter
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
