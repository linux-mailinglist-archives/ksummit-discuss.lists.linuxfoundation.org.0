Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8B79D9C8
	for <lists@lfdr.de>; Tue, 27 Aug 2019 01:11:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A6FA1765;
	Mon, 26 Aug 2019 23:11:28 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C71041756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:11:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95C8888E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:11:24 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id e20so41540910iob.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 16:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ueDnfb0JpxNx0/6oK1z4Lzle6ToNkywPvmvnK8BUk1A=;
	b=kKc+0qSrfMsWvi/X0T7EUoHj1jCOX+THXnFZZsRJNahvStnVWhnol/6NGA9YNO3Z9D
	y+iabsusQ+VdyvmnsG7GLQjlikzr9YKnTapnjVuY0r6NEVM7H1Pq3W881QctKL4VApBG
	mBntBGIVsSbgUJ3C31sRDvxeZwNCqEqLoe9f8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ueDnfb0JpxNx0/6oK1z4Lzle6ToNkywPvmvnK8BUk1A=;
	b=kdVCZ5C8sCcUGZUonAbO1XPhHZXKUYMS0wyUYJk2xDX+HOytWyIs6TScsxQKpFN8ni
	6lZ7KQNfxctupGD7M0f/1ZWF4i+vG2Ebgml1szsPY9mCsXiOqTP/qxgYY4xqhH39kDR3
	00vPdrq1tPSwWtap8C8e6J69TmJ2/D18CFYJT+2LwMjgkEvWx0xNOmKhohFS+fcLj8G7
	4k8E7CX9PvVrdjcco6DQYABJtVDkG7iz8yGmXNs1H3T68/AKdZmfL2st9x6eeg/ViRaJ
	DbftGPgwT/edYFom0wQXjNcoNIZiNh6TAduTb86H9XPiyQyLcm7vlCg/jqWarMv7xxg7
	9m3w==
X-Gm-Message-State: APjAAAVKzC5aKc3PJpbMF4gmuJrf052r6i5yQA2xyBV1AJLXCrh6ZmNT
	+1JuenpmBYjNtNgjXtNZbNeIJlOYO+k=
X-Google-Smtp-Source: APXvYqzJNXhs/JnPVk1jzcxOJ2js+QYvsSZWUQ1zLStCE99u15daCMkJZ6fPxk36zx7YqxBpb09WcQ==
X-Received: by 2002:a6b:7317:: with SMTP id e23mr24079236ioh.37.1566861083085; 
	Mon, 26 Aug 2019 16:11:23 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
	[209.85.166.53]) by smtp.gmail.com with ESMTPSA id
	d6sm17534953iod.17.2019.08.26.16.11.21
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 16:11:22 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id b10so32604571ioj.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 16:11:21 -0700 (PDT)
X-Received: by 2002:a02:b156:: with SMTP id s22mr6808359jah.132.1566861081441; 
	Mon, 26 Aug 2019 16:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
In-Reply-To: <20190826230206.GC28066@mit.edu>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 26 Aug 2019 16:11:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
Message-ID: <CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
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

On Mon, Aug 26, 2019 at 4:02 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Aug 26, 2019 at 02:35:33PM -0700, Doug Anderson wrote:
> > * This requires extra tooling that I think nobody will adopt.  People
> > today already (accidentally) adopt Change-Id in the non-discardable
> > portion.  I think it would be easier to get everyone currently
> > removing Change-Id to start including it again than it will be to get
> > everyone to change their tools to move it to the discardable portion.
>
> The reason why people Change-Id's exist in commits today is because of
> tooling which is distributed as part of Gerrit.  That's why people are
> deeply suspicious of any solution that involves Change-Id in the
> non-discarded portion --- because the majority of Gerrit servers up
> until now are behind corporate firewalls and since Gerrit servers have
> robots.txt files, most Change-Id tend to be useless.
>
> If we come up with new tooling which is more useful, people will use
> it.  If it's not useful and doesn't makes life easier, people won't.

Unfortunately the tooling won't come up until Change-Id is there and
Change-Id can't be there till the tooling is there.  ;-)


> On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> > 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> > will modify the tools I use to post upstream (currently patman) to
> > encode the Change-Id.  My naive proposal would be:
> >
> > Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> >
> > If I try this and it works for me then I will post out and suggest
> > that any other like-minded people encode Change-Id into Message-Id in
> > a similar way.
>
> ... and I would expect patches with this would get NACK'ed because
> they would be just as useless as Change-Id's are perceived to be
> today.  People who are gaming the rules will tend not to looked upon
> favorably; the same will apply to their patches.

Sigh.  Email is so hard to communicate over.  I'm not intending to
include the Message-Id in the commit.  I'm intending to use the
Change-Id _in_ the Message-Id.  The Message-Id already has a bunch of
random characters in it.  Why not make them useful for something?


> BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
> msg-id has to look like a e-mail address (left-hand-side@example.com).
> So something like this is legal as a message id:
>
> I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com

I think this is the same comment that Thomas Gleixner had.  I will
certainly make sure my Message-Ids are formed correctly.  Thank you
both for pointing this out to me.  Presumably I would have noticed it
when actually trying to implement this but now I definitely will.


> ... and indeed, that's more useful, because it tells us how to
> interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
> Change-Id assigned by the linux-review.googlesource.com Gerrit server.
>
> In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
> going to be presumed to be useless.  And in fact, a Google search for
> this ID returns *nothing*.  Yet visiting the link
> https://linux-review.googlesource.com/c/1158 actually returns
> something useful.   That's why the latter is superior to the former.

Sure, except that in my case there is no gerrit server to provide a
link to.  I use an upstream-first approach which means that all
initial work is done with mailing lists.  There is no server to
provide context to.  I think we are re-hashing old emails in this
thread.


> In summary,
>
> Not useful: (and will be probably nacked)
>
> Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
> Message-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
>
> Useful:
>
> Link: https://linux-review.googlesource.com/c/1158
> Link: https://lkml.kernel.org/r/20190826204407.17759-1-daniel.lezcano@linaro.org
>
> Not as useful: (people will prefer the Link example above)
>
> Message-Id: 20190826204407.17759-1-daniel.lezcano@linaro.org

Presumably all the above is because you thought I was including the
Message-Id in the commit.  I'm not.  Locally I will have Change-Id in
my commit.  The scripts I use to post to the mailing lists will strip
the Change-Id out and use it to make the actual Message-Id.  I will
make sure that the Message ID is well formed.

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
