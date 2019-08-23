Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 026949B090
	for <lists@lfdr.de>; Fri, 23 Aug 2019 15:16:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0385FEC9;
	Fri, 23 Aug 2019 13:16:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 173D8E4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 13:16:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FB1B89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 13:16:12 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id z64so3796360ywe.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 06:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=X5rEzYs1fSXoqUXHDEw1NqpCBjvMn49cuyJs7PoBGKI=;
	b=ek8bIr5hJt0SGyp33u2ZQqWaBR+NGvggmtcSoYyNXQMhOz4sCaipcYVwRyYn5UVYGb
	vcZCkdglthgJRHrAXszjkkqStSMb5m+VXlMyuNa0KdPiQekioFfOijyRRq9Yatziku5q
	P56551j1SYO604UIGnh0J0E8pokx/fAwwIfh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=X5rEzYs1fSXoqUXHDEw1NqpCBjvMn49cuyJs7PoBGKI=;
	b=HrAzAuEiFa4TSAtWbgW8OGpaybxSDNaznjw5cNpmVDOwOA4lo/VvkiTY73nYR9C3ZU
	s46PVOsyhxldiC7XwmnaEQuiMURPYU7G42IYeS0fmQVsoCNS9Y8e0GTPc39Or80TYxgl
	awit9AmAamiAYd85IUxFXXrTPBkp+9t1C1HNPe7nbagr1scexM0wY/wD15D95gRsOrL7
	rNE9/IUtYiLIl5hzdxaCn+JjOB0XrFg2eMEuQT7ID5ecwacMwT7OY11+TB5rnHUxy2Zj
	O3bwocrYHZEhPo9h7M25z6VEFmu3Mt7az/568mO6Jo8oCAbmwrUSVOh6dQyYDRU/fwjG
	45Ug==
X-Gm-Message-State: APjAAAXJG7Hbs+LSQHqUXs5dQfs0+MEegsbJ6lESnUck0g7Yg2cM5PGg
	cIw5cF3qTOQYA/ZV87xVxMK/Cag+lqQ=
X-Google-Smtp-Source: APXvYqzXkgkWBHnAK6fO6wnEFoeedw6riSmsbOXSOUIOFB4PFSHSvJ+grilXVsDdzYfOgmMtdvpwaA==
X-Received: by 2002:a81:4987:: with SMTP id w129mr3514669ywa.5.1566566171558; 
	Fri, 23 Aug 2019 06:16:11 -0700 (PDT)
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com.
	[209.85.161.43])
	by smtp.gmail.com with ESMTPSA id j3sm533689ywf.35.2019.08.23.06.16.09
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 06:16:10 -0700 (PDT)
Received: by mail-yw1-f43.google.com with SMTP id i138so3792002ywg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 06:16:09 -0700 (PDT)
X-Received: by 2002:a81:2492:: with SMTP id k140mr3253114ywk.138.1566566169398;
	Fri, 23 Aug 2019 06:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
In-Reply-To: <CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 23 Aug 2019 09:15:30 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
Message-ID: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Thu, Aug 22, 2019 at 11:04 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Aug 22, 2019 at 7:58 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > So yes, I'd *much* rather see that "Link" line than try to make a
> > "Change-ID" line be a thing.
>
> Tangential note: since it looks like "Link:" lines are going to get
> more common in general, maybe somebody with the right tck/tk-fu can
> make a tool like 'gitk' be able to just do the hyperlinking thing (it
> already does it for commit hashes in the commit message, but wouldn't
> it be convenient to do that for web links too and open a browser
> tab?).
>
> And maybe we can even make git.kernel.org do it too (I think that uses cgit?).
>
> I think that might make it just nicer in general to browse the logs
> and actually follow the links without cut-and-paste games..
>
> So using a generic "Link:" tag that can be used for multiple different
> things sounds like a win in general over some specialized change-ID
> tag. No?

Only if you've uploaded the patch somewhere before sending it to the
mailing list. I think this would satisfy the Gerrit crowd, since
they're presumably uploading the patch to Gerrit, getting some review
on it and then sending it upstream. They will have a link. If you're
just interested in being archival tool friendly, you probably just
want to add some uuid cookie to the patch and post it directly to the
mailing list.

That said, I don't think Change-Id (or Uuid or whatever the cookie tag
is named) needs to be committed to git. If people stuck their
Change-Id tag below '---' in their mail, it would solve the issue of
finding old revisions on the list. This would also allow tooling (like
patchwork) to track across revisions. It's pretty easy to work
backwards from a commit to _any_ one revision of the patch on the m-l,
and that will give you the Change-Id.

If Change-Id becomes widely useful below '---', you could add support
in patchwork to allow direct linking by Change-Id. This would allow
people to add Link: <patchwork-server/change-id/<change-id> to their
commit messages without first uploading it somewhere.

Sean

>
>               Linus
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
