Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E52149AC
	for <lists@lfdr.de>; Sun,  5 Jul 2020 04:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A983287156;
	Sun,  5 Jul 2020 02:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HrZI-bRw3wu; Sun,  5 Jul 2020 02:44:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B15BC87152;
	Sun,  5 Jul 2020 02:44:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D8FDC0888;
	Sun,  5 Jul 2020 02:44:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6AC51C0733;
 Sun,  5 Jul 2020 02:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50CD5881C4;
 Sun,  5 Jul 2020 02:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5W+gwqtUXQNo; Sun,  5 Jul 2020 02:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E5C7881BE;
 Sun,  5 Jul 2020 02:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=2aRzJJZ6llsJJNnz5pBbngiYwHyozuVHCDy1h81iPNE=; b=NSrJ6ieT3Z24MjVhs62Z22VWio
 TBtG5TGQgNnPYEkKJMDGQgQtPutcc6vjlWoDmJsqQ5e2Bpn4bPyJFkvP2O048xJ/opl55tp3kQBmN
 UgmA0t/6qdV7m5JvFbB4h0DpdnG3ucxAGT8rgpqTvblCTalK/HX+coDcPfbQA6AINRdwtotTHUE8j
 JyvQ8kyUwN0FjjdhwnQHvswwX0q/a64WuQPOHjJ/76zvsUEUkF9vB+fK6kXo8/ekhxqcm7auwoRol
 kEyRBtO8DJNz4v6YJnnS5RzxDtWRoBROh5R+vjX1DFZ8/kYe1EmNoj50rNeIk8db04OnUg+tcISKc
 HRj0oPuw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jrudx-0004eY-0Z; Sun, 05 Jul 2020 02:44:37 +0000
To: Kees Cook <keescook@chromium.org>, Matthew Wilcox <willy6545@gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
 <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
 <202007041804.B5E229E2B6@keescook>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0a7dd50b-b4b3-d9fa-dbb0-8c30d522b945@infradead.org>
Date: Sat, 4 Jul 2020 19:44:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <202007041804.B5E229E2B6@keescook>
Content-Language: en-US
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 7/4/20 6:10 PM, Kees Cook wrote:
> On Sat, Jul 04, 2020 at 08:10:33PM -0400, Matthew Wilcox wrote:
>> Left-right tree makes no sense. It doesn't distinguish the rbtree from its
>> predecessor the avl tree.  I don't think it's helpful to rename a standard
>> piece of computing terminology unless it's actually hurting us to have it.
>> Obviously if it were called a "master-slave" tree, I would be in favour of
>> renaming it.
> 
> (No one has suggested renaming red/black trees, so I think the
> slippery-slope argument can be set aside here.)

Did you read this message?

https://lore.kernel.org/ksummit-discuss/CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com/

> As for the actual proposal on white/black-list, I've always been annoyed
> by the poor description it provides (and I get to see it A LOT being
> the seccomp maintainer). I welcome allow/deny-list (though the change is
> not new for seccomp -- the man pages were updated last year (thanks
> mkerrisk). :)
> 


-- 
~Randy

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
