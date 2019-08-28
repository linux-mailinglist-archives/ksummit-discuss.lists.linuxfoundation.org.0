Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DD937A0BAB
	for <lists@lfdr.de>; Wed, 28 Aug 2019 22:40:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4137430BB;
	Wed, 28 Aug 2019 20:39:50 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F3C22F89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:39:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95C2113A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:39:33 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q12so2324905iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ot5ddeFqfOcdZPNDQvMVw2f/27FAO9IZhbW8zIN73GQ=;
	b=k/fr/zqWe9ko3YJ7oJKfwXbhJYNNOOqEH/tJWmWZNbuGAFa//qv24wFAeAtbtLyoD7
	HlftPMhAMehw/h+drFJAS79llBYW0QDYlI04n+RB/szIvD+bh3OG9pWtMkf8ozlXjw/I
	Q9CiiHJScDTmCznVbSWwFZ8bXv5ZNDRwLgcRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ot5ddeFqfOcdZPNDQvMVw2f/27FAO9IZhbW8zIN73GQ=;
	b=awyPlG8YlDAdEObdkuxt9+Oa8NZMid8iT8KiePGx4aX5X7qdm5POWmbXFglSTDZlQV
	g96un+jQ1eWY/sqQRCSm6LaUK0YiN3eW2b/1YHKMqP2+kzi2X8+5OXjpdQh6cUA13NGS
	k1ZWIKsCWLuyT3bRwJWgpbGuYJ1EprhxSIlXLYY3sk8zwMrAMeiF6vsrDE/9Zzc09xje
	sedQefmp03JHrstbg63/CiAU1jG8jwKMRnVEbLV/IDTG3/RFBzfGOT09YMaXBUCOEu2t
	eHlbT4Ko8QxveR2lJxvGkA7DIL9PSMuObTE3ayskf8EEu43EYwuR1BZekQQXZ44NWKxv
	zqcQ==
X-Gm-Message-State: APjAAAVYMxSyb8NxC7EH9ii/ybps9amE9ZdLHJ+F++kDFPyqUleEf561
	9H1pd9b4+YZAanJD+GMlTO/SKuUojeA=
X-Google-Smtp-Source: APXvYqwcc1Hi7AmTo9EQWB2W3Ab5i1MZtVyydUMKB1giYX82shPRHyJYBPE8yOW829aDN/+mypZikg==
X-Received: by 2002:a05:6602:2585:: with SMTP id
	p5mr6507136ioo.183.1567024772813; 
	Wed, 28 Aug 2019 13:39:32 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
	[209.85.166.53])
	by smtp.gmail.com with ESMTPSA id e19sm81246iom.57.2019.08.28.13.39.30
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 28 Aug 2019 13:39:30 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id l7so2291128ioj.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:39:30 -0700 (PDT)
X-Received: by 2002:a02:6a56:: with SMTP id m22mr6316582jaf.114.1567024770123; 
	Wed, 28 Aug 2019 13:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
	<CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
	<20190828135820.GA24857@mit.edu>
In-Reply-To: <20190828135820.GA24857@mit.edu>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 28 Aug 2019 13:39:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
Message-ID: <CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>
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

On Wed, Aug 28, 2019 at 6:58 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Wed, Aug 28, 2019 at 08:38:33AM -0400, Joel Fernandes via Ksummit-discuss wrote:
> > The idea is to make it trivial. All of the steps above are automatic
> > and scripted, that's the whole point of what I was saying - to make it
> > automatic. If it is not automated, then it is unlikely to be adopted
> > widely or unlikely to stick. The final user will experience it as
> > trivial.
>
> I'm going to gently suggest that we've reached the point where instead
> of people trying to argue for their suggested solution is to actually
> *implement* a prototype.  It'll be a lot easier for people to judge a
> particular solution if it exists, than to debate about vaporware.

For anyone interested, I've prototyped up my proposed solution.  I
personally use patman (a tool hosted in U-Boot) for managing my
upstream posting so I have posted a patch to patman that encodes the
Change-Id in Message-Id.  We will see what folks there think of it.
There are at least a handful of other people who use patman for Linux
but lots in U-Boot so maybe it'll be a good way to get a feel for
this.

Feel free to look at:

https://patchwork.ozlabs.org/patch/1154833/

The actual Message-Id generated there was:

20190828132723.0.RFC.Ie6289f437ae533d7fcaddfcee9202f0e92c6b2b9@changeid

Thomas Gleixner: I tried using the python library to generate a
Message-Id but it produced something that was way too long and I felt
that would be a showstopper when a maintainer in Linux tried to
provide a "Link:" to one of my patches.  I have generated my own
format based on what Rob Herring seems to do (an example Message-Id I
see from him is "20190827223716.GA31605@bogus").

Theodore Ts'o: Hopefully what I have done counts as a prototype for you.

Christian Brauner: I am not planning on posting any Documentation
changes.  I feel like it's sane to get a feel for this right now and
see how people like it.


I didn't CC everyone on this list on my patch, but it should be easy
for anyone interested to subscribe to the U-Boot mailing list.


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
