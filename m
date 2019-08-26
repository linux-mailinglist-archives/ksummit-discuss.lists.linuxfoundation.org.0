Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3096C9D8D4
	for <lists@lfdr.de>; Tue, 27 Aug 2019 00:07:08 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AADCD14BB;
	Mon, 26 Aug 2019 22:06:58 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76F23E81
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 22:06:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 17A398A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 22:06:56 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id t3so41190447ioj.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 15:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uC7Bd/Rs0iq36oF7D/ojH7DqycmoTA6mlQAWZv9JxR4=;
	b=n1gGDJAeK0ROjEyjTFfA8ZjzMKVkybrgIYkT/X+vdIFhrTVCBVdbtg20DjAqU9kd83
	2ZfTApNp9U8BN9e8lWXkswrnLPaCLteGiAD2AYcan4iV2dd0+K3nASF2tKRGLKP/WHeR
	PQp51WospYA2/mrGPCk6abJmKVpla2T05Qa/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uC7Bd/Rs0iq36oF7D/ojH7DqycmoTA6mlQAWZv9JxR4=;
	b=XLkrdnh0W92rnIiASD83d52JxFrTmn/8zI4q/9LYdfnLt13qXhPOnCGqqLTTxUoSbE
	odoalN9ByFknh7tEJ44XpAwKb4IieaN7zLZ1sqz3DEOQizUbpEBTkihZ1oXvA7kWQMwO
	XeGBpnoOzCh9n03Ywpd6jiKDiUu+qt/kYhq9ZDgmnY+x4jL38OI7fSm3aU3ZezcGJPi3
	464upBv9uh+DxppqqJQ+ztPB6sOampb6YgmhM+7/8I26DClO34opb4g/a0bn46jHXlG5
	jKr2gfOtRvpvEzQgXOxKZMN8fPHOtovjmjv+wphquPqgIeGkNe6ess5HyKOS4YwBNFii
	HdjA==
X-Gm-Message-State: APjAAAXOssZLv2KeyySVuN6IRP3q0HnqljVUn+63C7IDutYujTBX6S5q
	G4GOTFY5+0xbEKlXxS/+dT8JhwSbmgg=
X-Google-Smtp-Source: APXvYqybyjoaXNT4AayP/TBp3dGW+KKxJuklcA4HBnJ3rlRInLJ8+RwmIZ9tnPQlavwKpmEikhAOxw==
X-Received: by 2002:a05:6638:310:: with SMTP id
	w16mr20075132jap.136.1566857215217; 
	Mon, 26 Aug 2019 15:06:55 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
	[209.85.166.46]) by smtp.gmail.com with ESMTPSA id
	w5sm16104899iom.33.2019.08.26.15.06.53
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 15:06:53 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id 18so41218879ioe.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 15:06:53 -0700 (PDT)
X-Received: by 2002:a6b:cac2:: with SMTP id
	a185mr14568394iog.142.1566857213200; 
	Mon, 26 Aug 2019 15:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<CAD=FV=VJt4+XRj59h6tmma5LfU52E_6QOSQVjh3T3M+1V=eMsQ@mail.gmail.com>
	<CAJWu+op476JWYqbT_dLaW7THqiJUvHPbOjeC=PUT5rzkGv4O1A@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<alpine.DEB.2.21.1908262347350.1939@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908262347350.1939@nanos.tec.linutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 26 Aug 2019 15:06:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
Message-ID: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
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

On Mon, Aug 26, 2019 at 2:51 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Mon, 26 Aug 2019, Doug Anderson wrote:
> > On Mon, Aug 26, 2019 at 10:31 AM Joel Fernandes <joelaf@google.com> wrote:
> > * At the moment I can't think of any benefit of Change-Id in the
> > discardable part of the patch compared to encoding the Change-Id into
> > the message ID in a way that it could be extracted.
>
> What prevents you from munging your change-id into the message id?
>
> As long as the resulting message ids of your v1..vn series are unique, the
> lore link which we want to have inserted automatically works and so does
> your change id tracking.
>
> Most people wont even notice that you do that unless you mess up and break
> the uniqueness.

Right.  This is exactly what I was trying to say in my post, but
apparently I failed at it.  In case it helps to reiterate my current
plan:

1. If some magic happens and folks suddenly embrace Change-Id as part
of the patch then I'll be happy because I think adoption will be
higher.

2. If, as I expect, Change-Id as part of the patch stays NAKed then I
will modify the tools I use to post upstream (currently patman) to
encode the Change-Id.  My naive proposal would be:

Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum

If I try this and it works for me then I will post out and suggest
that any other like-minded people encode Change-Id into Message-Id in
a similar way.

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
