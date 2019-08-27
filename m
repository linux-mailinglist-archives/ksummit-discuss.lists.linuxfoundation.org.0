Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 028249E956
	for <lists@lfdr.de>; Tue, 27 Aug 2019 15:30:39 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 263F11550;
	Tue, 27 Aug 2019 13:30:28 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85BF81542
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:30:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED5888A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:30:24 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id 44so21216655qtg.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 06:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=y6aGnTTL037h/beDl4l/Xp3rT2bZuwYsnEO2NdO/xa8=;
	b=BGf7NpAUyjE+PLHeSWg76808YrSpdaMBQ83mnTtz5Z/rOyTzVayS7Rnj6kYJHOz/kZ
	B/tguZrHO95gG7dsT8DH3oLlRCPMaVBknRH1UGefyEvcx6EPPpx0AIozE9SY7/IL0AX/
	7t0ggoUDBiM1Ew/ZSeHaXY9OBPNIsxLKlq5fXLj7xc3uInfugj3ZLbxbPhzUgobue2F0
	Vg/ZnZde3+cgH/KY++rwKyu0P+eOLx10Umz81io2f0Iinfw04sEAut//2EIKaqPmp0+N
	moMG1HeQG4KHvjZ0alHuW70NNVxrzoCI6ecSM26LOE11CZJGqPdJ++VyK5oLUag9u0Z2
	EU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=y6aGnTTL037h/beDl4l/Xp3rT2bZuwYsnEO2NdO/xa8=;
	b=PvidISwp+4gX6VtaVWld4uxgvRySM1XstbEO1eA/FBTN1bxr/UznvH8m0vFRlQHPpW
	meonrIOLMGryfHoBoVHxD03Jb/nahSQtiVtqrIvsVC4XdPvirScoCVQuLoyPE+DmQ1Mf
	KZdK90GW4AitkiByPlPY6HlpS+OI9jQXXk06Tlk/mlUIiLzVjHcpGuKsL0PUM1TmoyLP
	JGZo3Son7kGi/YWxq0ma9/XdWTpeCQJDRF3jF8H7EGfyPej5creGA09RAgredej7EJiV
	PpMmbqdD+5za7WKTrZq2NUjBhYrK09ZDvPQi8nv+Wc9I7xAvp9abXz1pz3aRQEJYSKDn
	5MzA==
X-Gm-Message-State: APjAAAWPeamEYWQHUH/1HEiKZlKov/aPECq5wCV1qc4gz2yjn2oRbmhr
	INLsC0J34TBs0Nuw+5mdJvo5eZMDyYqzX9QO7hSXnA==
X-Google-Smtp-Source: APXvYqzKGo1sp7o/e/6xPJsg95OcZmqxHJ3l/s18zkbwVYzgA9ZI+pWiCf2NYvOUwi5WBqgOOXfdF56CRrhBjmtNkEc=
X-Received: by 2002:a0c:8cc3:: with SMTP id q3mr19283491qvb.127.1566912623341; 
	Tue, 27 Aug 2019 06:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
In-Reply-To: <CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
Date: Tue, 27 Aug 2019 06:30:11 -0700
Message-ID: <CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
From: Dmitry Vyukov via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Aug 27, 2019 at 12:33 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Dmitry,
>
> On Tue, Aug 27, 2019 at 2:30 AM Dmitry Vyukov via Ksummit-discuss
> <ksummit-discuss@lists.linuxfoundation.org> wrote:
> > A somewhat related point re UUID/Change-ID.
> > For syzbot (or any other bug tracking system) we want to associate
> > bugs with fixes. It turned out there is no good identity of a change
> > that we could use. Commit hash is an obvious first thing to consider,
> > but (1) it changes in linux-next, (2) sometimes the change is not
> > committed yet when we do the association, (3) it is different when
> > backported to LTS (so not possible to say if a fix is in that stable
> > tree or not).
>
> For (3): LTS commits have "commit <sha1> upstream" in their description
> (perhaps some have "cherry picked from commit <sha1>"?).

A change identification scheme would need to solve all of these. E.g.
non-committed changes look more problematic for anything that uses
commit hashes...

> > We decided to use commit subject, which works to some degree, but also
> > has problems: (1) not necessary unique, (2) sometimes people change
> > subject during backporting (e.g. prepend some prefix), (3) has all the
> > same problems of email clients messing with text (e.g. I can't issue
> > #syz fix command for loo long commit subjects with my email client).
> > Some real UUID/Change-ID would solve all of these problems by giving
> > us capability to refer to changes rather than a commit in a particular
> > tree only.
>
> "git patch-id --stable <sha1>" may help, too.
>
> For quick lookups, you need to generate/append to an index regularly.

It's not me, it's everybody ;)
If I am reading git help correctly, this won't handle changes with
more than 1 version. Also maintainers will be prohibited from doing
any changed to patches during commit.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
