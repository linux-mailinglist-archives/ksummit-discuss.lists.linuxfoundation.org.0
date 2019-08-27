Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 997B79F523
	for <lists@lfdr.de>; Tue, 27 Aug 2019 23:35:12 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5813A1D7B;
	Tue, 27 Aug 2019 21:35:03 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B83F15E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 21:35:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 717F188E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 21:35:00 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id l9so599303qtu.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RF5a7LO76vhbb0xNghH32bY4Kps4Au+8FdiOc7ut8ZE=;
	b=LW/GTOaa09IaWXTyXryEoQHukZ6zs+TLo+YlLqvoa4FK8Jfcrx1RZOlwIUpLCxpwNE
	LLODU01XP13tW5ZZRR3t7PS40qVF7kXs6Z4mjmfGv2HKFyaubGo6EADVdk8AI3RxII9q
	v8Tkt5+98aPWoYiWLeUN5QgL+GhrgubB/EzPcNeuDbnc9Ao2BqXLq2muEEqDhJc0gv3l
	GHARPEy3L7rcwR42utR84n9B8g+crEZnrpCjDgI4VnD47RsFlY2BjQYQV4b1ViWxZOKC
	5kdwySKzups+bVnQKl03wvWruuy9hgvWyBDgGa3jRUmeb1HyVbgGc0Ikq1a1FGRD8yek
	PAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RF5a7LO76vhbb0xNghH32bY4Kps4Au+8FdiOc7ut8ZE=;
	b=OUVdohj8aWSVH2RG3tE46owZNGSN6EAFan5BwCkzjbXvGSteza6jFpM3afoQMkRDbH
	+BeZ45j5sW2RzVGlZKO1obrWdQAwz71y8qTRQJMNL7b4OMatSg/VmAho2uFYqT6CT8xc
	nmg/zxRqOLazXQuBlXvMjd/IFMf9LGWbcp8Q8Ch5fS4ut8NOK2UmqG1jIHttnW5BCw9I
	H37eH5GvdPYO9h1R+hcKidlwmLeEfdDLOlqhpW7whX/8tGECRKnJ1ALrPBEOmJYf9/ZT
	NEPjqB1NSPWzLisz3ZYABVljjGbCaXxaHO6hgGguOneVoG3sJO7gKHxCxrQjsHm84T1z
	BY9g==
X-Gm-Message-State: APjAAAX8CMXgqY6e2i58c5xFZkLG9qjWWXgOpdTfHprpeAor5rfh0vc+
	ERDWG5kxVIUPsgmt3VCclajMKAs1PSA20d2T1MhroA==
X-Google-Smtp-Source: APXvYqx6C/6ClH0DCrQGx/YpEqpkUZWtKCkK+wkuZwxYxX7nL9686rMVrHEcLL+hcnLuZIvnD79NCKDjbtSGaJ+hedM=
X-Received: by 2002:ac8:f43:: with SMTP id l3mr1085415qtk.278.1566941699173;
	Tue, 27 Aug 2019 14:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
In-Reply-To: <20190827195351.GA30710@kroah.com>
Date: Tue, 27 Aug 2019 17:34:47 -0400
Message-ID: <CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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
From: Joel Fernandes via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Joel Fernandes <joelaf@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Aug 27, 2019 at 3:53 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> > On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > >        Link: https://lkml.kernel.org/$Message-ID
> > > >
> > > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > > tag and I know you got some of them already.
> > >
> > > I'm using:
> > >             Link: https://lore.kernel.org/r/$message-id
> > >
> > > should we standardize on the lkml one instead as it's shorter?  The lore
> > > one handles any message id that is on any mailing list it handles, is
> > > the lkml one the same?
> >
> > It's the exact same system and the /r/ is always required. I prefer
> > lore.kernel.org because it doesn't imply that the message is going to
> > be on the LKML (i.e. it can be on a list that isn't even hosted on
> > vger.kernel.org).
> >
> > So, my recommendation is Link: https://lore.kernel.org/r/$message-id
>
> Great, will stick with that one, thanks.

I am thinking of how to make this automagic and useful for me. My plan
is (and ymmv):

When I write a patch, have a git hook generate  "Message-Id" in my
patch changelog itself when it is written using Greg/Andrew's
make_message_id. This Message-Id is not the final message-id and is
just for reference purposes for later processing. Then when sending
it, after git format-patch I will do a few things:
  (a) Consult the archive to check the highest value of N for which
Message-Id-<N> does not exist
  (b) Add Message-Id: Message-Id-<N> to the patch header so git
send-email uses this as the Message-Id-<N>
  (c) Add this Message-Id-<N> as a Link: to the changelog;  Possibly
removing Message-Id<N-1> link.
  (d) Remove the original "Message-Id" without the -<N> from the
changelog since it has no purpose.
  (e) Send the patch

This will automatically link all the previous revisions of a patch
vN..vN-1...v1...0.  And also does not need any manual labor - which is
one of the main selling points AIUI of Google's git hooks for using
"Change-Id:".  Also works for Doug's use case and for people wanting
to have a Link: tag.

Such a git hook can then be provided to the kernel community to better
automate their flow of Link: generation. Although the steps (a) to (e)
may require additional tooling and changing of the local git tree at
the time a patch is submitted - which is Ok for my flow but not sure
if it would work for everyone.

Thoughts?

thanks,

- Joel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
