Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E559BEDB
	for <lists@lfdr.de>; Sat, 24 Aug 2019 18:35:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5465B941;
	Sat, 24 Aug 2019 16:34:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A95BA49F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 16:34:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 904F3A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 16:34:52 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t6so27406407ios.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 09:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CbCzLo6reUDGXUNFq0eIFixe3nSoLlVMwt0w/Q94vzc=;
	b=UzyswgfcD6i2qyCzp6ut/8sfYa80Dzm7PVkmKf7SC4zU0Ybd8k2wRxngkg5AWGuU5y
	778sKTU1Rm6kr86mtu1mMQApKV7q5UTX0wxJKf0h9GwKGKs8g/htY7qsi433/wapnifl
	/POlI1rbm7GBVGeA4bkWRf3iZ+SysFRfrcWsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CbCzLo6reUDGXUNFq0eIFixe3nSoLlVMwt0w/Q94vzc=;
	b=hFKzGmtEqv8rWV9c3RlAzFmLvwCe146oydrVcBJ+l1aPITdN3NhMYwIL4YEw6s3/IG
	0fweuFj4I+8cVivwjOECVaSJ5zjvBgmJloSs7iEa/cIzV8T6Mf9IYI5AZukJTCuSJ7dB
	lT++174omgco1HBK2JVETeHpymuFlD+/d8WG9O2l0HNj5Yn7pL/0mLrn/++T903bcMzZ
	0V1XpK482zvIOGkNtt2FKdAogAT3fJ0OZQoE9kuTSn1aPWcOwwvH6KT27flJQLFvI7wY
	D5i51LqTncB/wMUyCuHxO0ZbgRPBWSdPdzg0hd/AlkvpYaEJCfTiWJeDgoPHGEtvIkr2
	7quQ==
X-Gm-Message-State: APjAAAWc799mszUV/Dg+d5/E7gfr/P1d6nT0cxYHqIQyI/mSYnI1nDUG
	x2zSA85V0oDApJHElqXMsZq5gT+UTvs=
X-Google-Smtp-Source: APXvYqwSH9Ehf4uGkeRvHb5+AwHJkUFo8bxnPNKJj8MjAlT4heRPlF07vzDqUIwHJhYzBAk3pi7WpQ==
X-Received: by 2002:a5d:88ce:: with SMTP id i14mr8301626iol.307.1566664491533; 
	Sat, 24 Aug 2019 09:34:51 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
	[209.85.166.45])
	by smtp.gmail.com with ESMTPSA id r7sm4731018ioa.71.2019.08.24.09.34.50
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 24 Aug 2019 09:34:50 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id b10so18332412ioj.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 09:34:50 -0700 (PDT)
X-Received: by 2002:a5e:a502:: with SMTP id 2mr7163416iog.269.1566664489667;
	Sat, 24 Aug 2019 09:34:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
In-Reply-To: <CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 24 Aug 2019 09:34:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
Message-ID: <CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
To: Christian Brauner <christian@brauner.io>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi,

On Fri, Aug 23, 2019 at 1:02 PM Christian Brauner <christian@brauner.io> wrote:
>
>
>
> On Fri, Aug 23, 2019, 21:17 Thomas Gleixner <tglx@linutronix.de> wrote:
>>
>> On Fri, 23 Aug 2019, Dmitry Torokhov wrote:
>> > On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
>> > > On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
>> > > <dmitry.torokhov@gmail.com> wrote:
>> > > > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
>> > > > >
>> > > > > Yes, it's work for the submitter, but it's always work if the submitter
>> > > > > wants to have a proper trace.
>> > > >
>> > > > Here is where I disagree with you. As a patch submitter, I frankly could
>> > > > not care less about proper trace, history, etc. I might be putting cover
>> > >
>> > > But that is exactly what the problem statement is. Doug does care
>> > > about tracing/history and wants that to be more robust etc.
>> >
>> > Doug here is not a submitter ;)
>>
>> Well, if he wants the changeids there then submitters need to insert them,
>> right? So it's work no matter what unless it can be automated with tooling.
>>
>> Guess what, how I inject the Link to the coverletter of the previous
>> version of a patch series? Definitely not manualy.
>>
>> So yes, if you want proper traceability then all involved people have to do
>> something. If it can be done with tooling fully automated, fine. If not,
>> it's work whatever method you chose.
>>
>> We cannot enforce the changeid thing in the community, but Google can
>> inforce it internally. So we give them a way to be traceable w/o plastering
>> the kernel logs with potentially useless information.
>>
>> That said, I'm fine with a Link as well, as long as it is public
>
>
> A link is definitely more helpful then the change-id.
> Quite a few maintainers are already making use of links to various sites anyway so I don't see a good reason not allow Links to Gerrit or whatever.

Just wanted to mention again that for the use case I'm trying to
solve: there is no link.

Here is the relevant part of the email chain explaining:

I have no gerrit server involved when I submit patches to the list.  I do:

1. Write patch on my local machine.
2. Post v1 to mailing list.
3. Make changes.
4. Post v2 to mailing list.
5. Make changes.
5. Post v3 to mailing list.

I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT LINK!

>> accessible. If not, then the coverletter/discard area is the place to use.
>
>
> Right, change-id should go after --- which is also what Dmitry Vyukov suggested.

It is not my favorite because it will have less adoption (people will
need to manually move the Change-Id or adopt new tools that do this
for them).  The advantage of keeping Change-Id above the cut is that
those who have adopted the git hooks that gerrit requires (and there
appears to be a lot of people who use gerrit) will magically start
doing the right thing instead of getting yelled at.  Overall the
success of this depends on submitters adopting it and submitters are
much harder to influence than maintainers (and that's saying a lot).

That all being said: I guess I will settle for not getting yelled at
for Change-Id existing after-the-cut.  Is anyone on this thread upset
if people put Change-Id after-the-cut?


> One thing I wonder though. What's the ultimate goal here?
> Enabling people to review on Gerrit and lkml simultaneously?
> I mean, apart from tracking versions of patch series/patches this can't be all, right?

Ultimate goal: to allow tools (maybe gerrit, maybe patchwork, maybe
something entirely new) to identify when a patch is a newer version of
an old one.  Yes, that might someday allow a nice integration of
gerrit with kernel mailing lists.

Short term goal: allow people to manually find patch v1 from patch v2
using text search.  ...or to find all mailing list discussion from a
landed patch.  Example of how short term goal works (from earlier in
the thread):

https://lore.kernel.org/lkml/?q=Change-Id%3A+I23e218cd964f16c0b2b26127d4a5ca6529867673


> We can already do that right now and I'm already doing that when applying stuff to my tree: inserting the link to the version of the patch set I applied and linking to the previous version in each new version of the patchset.
> That could also be automated.
> So is allowing reviews both on Gerrit or whatever the goal here and if so how do we ensure that lkml sees all reviews?

The flow I'm talking about doesn't depend on ANY gerrit.  There is no
server and there are no private reviews.  There is only a Change-Id
linking versions of patches.

IF (and only if) someone wanted to make a gerrit (or several gerrits)
that scraped LKML and created a gerrit change for each new patch, this
Change Id could be useful to them.  Presumably nobody would care if
someone made a private comment on one of those gerrits.  ...but if
gerrit every fully integrated email lists then (you could imagine)
that publishing your review on gerrit would send it out to the lists.
Any other gerrits that also happened to be scraping LKML would notice
this review and (presumably) mirror the comments on their own gerrit.

So in my mind allowing Change-Id preserves the distributed mailing
list centric workflow of the kernel but would help people implement a
GUI.

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
