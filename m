Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 864C39B1F3
	for <lists@lfdr.de>; Fri, 23 Aug 2019 16:29:23 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7A697F31;
	Fri, 23 Aug 2019 14:29:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34320CCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:03:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2B6B89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:03:51 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 196so5080140pfz.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/q1PV1l4oGgLu2GqmOC6k3TRKkCJu2Y6gI4hbOtzZy8=;
	b=Wi00MmFz8WJKNNSwF3hlOCHWqNhkpb0Q2GZBHTNSCKswL+Omtm4SEK4KkJhFgWMfVo
	P6suxLXhJwLDKaaibMOFXP+iEmhFvoMe/R1ZcTuCKdFIJUngP8vQ0OFt3OFBfj4+4pjy
	2VxAtdxKC8RUD3JXlULjVCOIwTxx8DZMuWOfgH5ib0gc1TguYpQ4n0UOMqhiMCwF1FQw
	5T7aKXzsHAvIM9yX76NH1PpOx4R1wx7iSVEFO5Mh3RWishlRPx1nO4ga8C7QsseQXiE4
	Cuan0eb8vsiU7dLxk9LfJECViDWcqH9W9BR0fovLsF661pmT075VP9qYL0H8BvH+dcqk
	jFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/q1PV1l4oGgLu2GqmOC6k3TRKkCJu2Y6gI4hbOtzZy8=;
	b=DRm4eXrO+7xd/l0ldrDkDSmZIbp3kkbijSdX0xmqeX9xlndgj8XRp/EfsFUvEEif5F
	THr2iP1DnT5PS2/Vi0xszOBoJ/cqMUPXCawia/AgC46/iRg7LKpz0A7JG/JBmmoa1iCi
	qwLpdG7maNBz8yQ/jW4HstHwGUSDesKfl9+iiHgrKT3wZ71Yu9e4TaafETSyQGbA3SVY
	ltC96xNhcdLI5niebxFMzsD7asaWEYMgvpFYm4/8xWmizoN3rH3VFFjB+vx05H5/4D5F
	bB0QNPMfFpimvdQQmScBZ+BM1wL7/G/SpbqZpHi8f1xCvHQsSVLoQc0W6jlADVNWy9hY
	j9LQ==
X-Gm-Message-State: APjAAAU6SkcWELBG849cvrlhgecjbiEdminszdouDS+cqEuBpAEogj9c
	rZpxyJuE8fd5YxKZ5q6pv4ChYBU9WOfm72DYXGDspg==
X-Google-Smtp-Source: APXvYqwX+ors63il9wfkCtJaFQ4qOFvsrVj2wa+It7P/HM8yQ3V8mwuXls1F3mFc4boptFAc6QPdlcuOl6Fpka9ct2U=
X-Received: by 2002:a17:90a:25ea:: with SMTP id
	k97mr2323079pje.131.1566518630495; 
	Thu, 22 Aug 2019 17:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
Date: Thu, 22 Aug 2019 17:03:39 -0700
Message-ID: <CAFd5g46G6KvLU7+mkCB1mULPG2x=X5TfUmjmm0_mahpgEZ_9JA@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Fri, 23 Aug 2019 14:29:07 +0000
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit-discuss@lists.linuxfoundation.org,
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
From: Brendan Higgins via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Brendan Higgins <brendanhiggins@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
[...]
> Specifically, let me list the problems I'd like to solve:
>
> 1. If I see a commit in Linux, I would like to be able to easily find
> all of the mailing list discussions relevant to that commit.  I know
> there are proposals about including the Message-Id of the final post
> in the commit log and that is certainly better than nothing, but the
> Message-Id will only get you a link to the final version of the patch.
> If the relevant discussion happened on a previous version of that
> patch then you need to find it yourself.  This gets harder if the
> patch changed subject, touched different files, if parts of the series
> landed at different times, and if multiple people were involved in
> posting different versions of the patch.  If the commit in Linux has a
> Change-Id then the old versions are logically linked and easier to
> associated with one another.

Please correct me if I am wrong, but I believe this feature already
exists in cregit[1]. I believe this is called Email2git[2].

To be clear, I am not against the Change-Id tag, but I think we
already have support for what you are describing here.

> 2. If I do a search through old mailing list archives and I stumble
> upon a patch that didn't land, I can more easily find different
> versions of that patch if I have a Change-Id.  Some of these different
> versions may have relevant discussions that explains why the patch
> didn't land.  Finding these other patches without a Change-Id might be
> hard, again because they may touch different files, have a different
> subject, or have been posted by a different person.

Yes! I would love this, and I don't think Email2git handles this;
nevertheless, I am not sure how difficult it would be to add support
for that to Email2git.

>
> At the moment using a Change-Id in the way I described would require
> searching through mailing lists for the Change-Id string to find other
> versions of the same patch.  However, I would expect it would only be
> a matter of time before tools like patchwork are able to use Change-Id
> to associate one version of a patch with the next version.  I would
> also expect that allowing Change-Id to exist would allow someone to
> (perhaps) create a gerrit instance that watched the kernel mailing
> list and mirrored mailing list discussions in the GUI.  In other
> words, once such tools exist presumably Change-Id will be much more
> useful: you will eventually be able to paste a Change-Id into a tool
> and get links to all relevant discussion and related posts.
>
>
> The basic summary is that I'd like there to be some way to track a
> logical patch over its lifetime.  I don't believe there is a reliable
> (non-heuristic) way to do this today and I think Change-Id provides a

I am not sure what Email2git does (I assume it uses a heuristic), but
it seems reasonably reliable after a couple of random spot checks.

> nice solution.  While we could come up with a new and different
> solution (because Change-Id was not invented here), it feels like
> adopting Change-Id is convenient and easy and provides a true benefit.
> Change-Id works super well with the decentralized/email workflow for
> patches and can be phased in over time (or it can stay optional
> forever).

I have wanted to do some of this tracking a commit across multiple
revisions and I have not found a simple way to do it. I keep meaning
to look into Email2git more closely, but it is hard for me to imagine
something more straightforward than something analogous to a
Change-Id.

So I like the idea, but I think it is probably worth first
investigating Email2git and see if it solves the same use case. If
Email2git is portable and is easy to build into a workflow outside of
cregit, then it should be equally easy to represent the metadata that
Change-Id provides outside of the mailing lists.

Thanks for thinking about this!

[1] https://cregit.linuxsources.org
[2] https://www.linux.com/tutorials/email2git-matching-linux-code-its-mailing-list-discussions/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
