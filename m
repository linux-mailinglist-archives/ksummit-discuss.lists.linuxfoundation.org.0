Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 832E69B354
	for <lists@lfdr.de>; Fri, 23 Aug 2019 17:32:05 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B407CFE1;
	Fri, 23 Aug 2019 15:31:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9325FCD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:31:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BEC338A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:31:48 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id e65so3985023ywh.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 08:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UbdXfIFHrG0GI6Pb6HPa6XjzrbQf96iKN6TGNn+ldfc=;
	b=Fvfwr+9HlXoca7AQmalfQZASOrsNYarj/ZMgJOlMQgdjDqZ7Iu8fQi6mgAlaKvWbjg
	wB2R4eb5sjR0cFfVqsHx8KnLNQjN6725msE1oePBPN6tstzHPO/Hj7d+s6ixZ6o+cX61
	PPD+zkNycLSYGjwC1Z6NYuKTx1R7dQLJY01CI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UbdXfIFHrG0GI6Pb6HPa6XjzrbQf96iKN6TGNn+ldfc=;
	b=sMhdmwSf4OLuvU7cnCg+EDfI0scsuySfDsaI4E42R+8zZyREQ6zOKu/AuzoFLXLPOg
	yW1OrDegsDHOMkwjUUGnX+fw/QUTHl+Ce9kTXNKwdDasZuTOOiRmYId+dQ2XVOu6Yc+1
	SksrMY8U7Esuk9Ol03/RTUvzXGqhXOMkfUZQx4fo6nQK/mPbYCgqigji807qvUSyZ8fC
	0GOLOcq0WyrsmY4XwVHV2nX5NiTl2YgSv82ndSKdQeyGGtNAoEN4kdjSUYL4Ry6SuR0T
	7rfS5xXrdjAwj/W1r3lktZ5cDj4o+Kp/+bDSUeBbPX00pG2w9hv+yvbcox/WMhxG9rb/
	0e4Q==
X-Gm-Message-State: APjAAAWSNMhCmc7CsbpP0DmNNgV+zk+fHGNE+2RyWwLsWUq15TlqJ+AT
	EQOnxb26q/WFhtd4wt+sNzgJ+Mv/eT4=
X-Google-Smtp-Source: APXvYqySXxMpkwJpuw3WWjf6YwcX8mBudv5/WpROcwdHil7n1tSu9DCDWaayj605KQYjuxBNoJPQZw==
X-Received: by 2002:a0d:d84c:: with SMTP id a73mr3759799ywe.97.1566574307838; 
	Fri, 23 Aug 2019 08:31:47 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com.
	[209.85.219.174])
	by smtp.gmail.com with ESMTPSA id r35sm619389ywa.75.2019.08.23.08.31.44
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 08:31:46 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id s142so4134404ybc.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 08:31:44 -0700 (PDT)
X-Received: by 2002:a25:9c03:: with SMTP id c3mr3581054ybo.312.1566574303880; 
	Fri, 23 Aug 2019 08:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
In-Reply-To: <20190823151843.GH8130@mit.edu>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 23 Aug 2019 11:31:00 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
Message-ID: <CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Aug 23, 2019 at 11:18 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Fri, Aug 23, 2019 at 09:15:30AM -0400, Sean Paul wrote:
> > Only if you've uploaded the patch somewhere before sending it to the
> > mailing list. I think this would satisfy the Gerrit crowd, since
> > they're presumably uploading the patch to Gerrit, getting some review
> > on it and then sending it upstream. They will have a link. If you're
> > just interested in being archival tool friendly, you probably just
> > want to add some uuid cookie to the patch and post it directly to the
> > mailing list.
>
> And this is why I think something like one of the two:
>
> Link: https://linux-review.googlesource.com/c/1158
> Link: https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384
>
> ... is a better choice.
>

Agreed. If you have a url for the patch this makes sense.

I don't upload my patches to Gerrit, but I am interested in enabling
patchwork (or equivalent tool) to do a better job of tracking revision
changes.

Currently I just link to all past revisions in the latest one (see
[1]) so folks can see the prior discussion. It'd be nice if there was
an easier way of achieving this.

Sean

[1]- https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1452c25b0e60278820f3d2155c65f1bfcce5ee79



> The Link tag, unlike the Change-Id: hidden amongst the diffstat,
> allows any patch review comments which are made via Gerrit to be
> accessible to the public.  The main reason why I suggested the first
> as opposed to the second initially is that one of the pushbacks
> against the "Change-Id: " header was that the
> "I3268f9036512c4378cde1da37e0612b43ed4d384" portion was ugly.
>
> Yes, that's purely an aesthetics argument, but in terms of human
> emotional acceptance, that's important.  The first is arguably better
> than:
>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=200847
>
> ... which people are already willing to accept.
>
> There are some advantages to the second, in that we don't have to
> contact Gerrit to assign the small integer number.  Either way,
> though, it should easy to teach Gerrit how to interpret either instead
> of the "Change-Id:" tag, and for publically accessible Gerrit
> instances, the Link: tag is strictly superior.  It allows you to know
> which Gerrit server to contact to find the review history, and it
> becomes obvious whether that Gerrit server is publicaly accessible, or
> if it is hidden behind a corporate firewall.
>
> Cheers,
>
>                                         - Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
