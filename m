Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3A5BB750
	for <lists@lfdr.de>; Mon, 23 Sep 2019 16:57:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2A22ACD5;
	Mon, 23 Sep 2019 14:57:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 972BFAEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 14:57:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6453987D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 14:57:10 +0000 (UTC)
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1iCPlv-0002yB-FE; Mon, 23 Sep 2019 16:57:03 +0200
Received: from [178.197.248.15] (helo=pc-63.home)
	by sslproxy06.your-server.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <daniel@iogearbox.net>)
	id 1iCPlv-0002sB-4k; Mon, 23 Sep 2019 16:57:03 +0200
To: Dmitry Vyukov <dvyukov@google.com>
References: <20190912120602.GC29277@pure.paranoia.local>
	<d6e8f49e93ece6f208e806ece2aa85b4971f3d17.1569152718.git.dvyukov@google.com>
	<610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
	<CACT4Y+aQMzoTCWUxeuS7qHjHaWHwKXFwS7A-NVcfmS-m-DWRZA@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <9fee1356-cf48-6198-4001-5d9d886fbf88@iogearbox.net>
Date: Mon, 23 Sep 2019 16:57:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CACT4Y+aQMzoTCWUxeuS7qHjHaWHwKXFwS7A-NVcfmS-m-DWRZA@mail.gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25581/Mon Sep 23 10:20:21 2019)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Rob Herring <robh@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@gmail.com>, helgaas@kernel.org,
	workflows@vger.kernel.org, stefan@datenfreihafen.org,
	Christoph Hellwig <hch@lst.de>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 9/23/19 4:08 PM, Dmitry Vyukov wrote:
> On Mon, Sep 23, 2019 at 2:52 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>> On 9/22/19 2:02 PM, Dmitry Vyukov wrote:
>> [...]
>>> Also adding people from the "Kernel development collaboration platform
>>> wish list" discussion on the workflows list [1].
>>> (Rafael et al, thanks for collecting the requirements, that's very useful!)
>>>
>>> I second the idea expressed by several people that addressing the
>>> contributor side is a very important part of this effort.
>>>
>>> While I understand the intention to provide something useful as fast
>>> as possible, I also a bit afraid that the Stage 1 ("putt") diverges
>>> us into investing into particular UI, tying capabilities with this UI
>>> and not addressing the fundamental problems.
>>> People are expressing a preference for different types of UIs
>>> (CL, terminal GUI, web, scripting), I think eventually we will have
>>> several. So I would suggest to untie features/capabilities from
>>> any particular UI as much as possible, and start with addressing more
>>> fundamental aspects. Building richer features on top of the current
>>> human-oriented emails is also going to be much harder, and that's the
>>> work that we eventually will (hopefully) throw away.
>>>
>>>   From UI perspective I think we should start with a CL interface because
>>> (1) it's the simplest to build (we don't invest too much into it,
>>> don't shift focus and will shake down more important things faster),
>>> (2) there are some important actions that are best done with CL
>>> anyway (e.g. mailing a patch). Later it may serve as an
>>> entry point for starting the richer terminal GUI or other types of GUIs.
>>
>> +1, agree.
>>
>>> There are 3 groups of people we should be looking at:
>>> - contributors (important special case: sending first patch)
>>> - maintainers
>>> - reviewers
>>>
>>> I would set the first milestone as having the CL utility (let's call
>>> it "kit"*) which can do:
>>>
>>> $ kit init
>>> # Does some necessary one-time initialization, executed from the
>>> # kernel git checkout.
>>>
>>> $ kit mail
>>> # Sends the top commit in the current branch for review.
>>>
>>> So that would be the workflow for sending your first kernel patch.
>>>
>>> Later "kit mail" can also run checkpatch, check SOB tag, add some kind
>>> of change ID or anything else we will consider necessary. It may be
>>> necessary to be able to force-override some of the checks, but by default
>>> you are now getting patches that have SOB, checkpatch-clean, etc.
>>>
>>> If there is an easy way to make it work with the current email-based
>>> process (i.e. send email on your behalf and you receive incoming emails),
>>> then we could do that first and give it to new developers to relief from
>>> setting up email client. Otherwise, we should continue developing it
>>> based on something like SSB (or whatever protocol we will choose).
>>>
>>> Obviously, the intention is that if you do "kit mail" second time
>>> with a changed patch, it sends "V2". Or if you have multiple local
>>> commits it will properly mail the series (or V2 of the series).
>>>
>>> Most (all) of the "kit" functionality should be separated from the UI
>>> and be available for scripting/automation/other UIs. Whether it's
>>> done as "libgit" or as "shell out" is discussable.
>> [...]
>> On that note, such a tool would also need to co-exist with the current
>> email based process for some (long?) time in order to allow a smooth
>> transition period. Last week I spent a few of nights hacking a small tool
>> which is regularly pulling the lore git trees I'm interested in and checking
>> out all [new] mails into maildir format so they can be read naturally by
>> UIs like mutt et al [0]. As an experiment, in case of bpf vger mailing list,
>> it extracts all current ~8k mails in under a second:
>>
>> $ ./l2md
>> general.maildir = /home/foo/.l2md/maildir/common
>> general.period = 30
>> repos.bpf.maildir = /home/foo/.l2md/maildir/bpf
>> repos.bpf.initial_import = 0
>> repos.bpf.url = https://lore.kernel.org/bpf/0
>> repos.bpf.oid_maildir = [unknown]
>> Initial repository check.
>> Cloning: https://lore.kernel.org/bpf/0
>> Remote: Counting objects: 23859, done.
>> Remote: Compressing objects: 100% (14476/14476), done.
>> Remote: Total 23859 (delta 1561), reused 22125 (delta 1430)
>> Initial repository check completed.
>> Bootstrap done.
>> Resyncing maildirs.
>> Processed 7953 new mails for https://lore.kernel.org/bpf/0 in 0.586466s.
>> Sync done. Sleeping 30s.
>> Resyncing repositories.
>> Fetching: https://lore.kernel.org/bpf/0
>> Merging: refs/heads/master commit d608393d011aa0c0fc5983059052362cebeafc91
>> Resyncing maildirs.
>> Processed 0 new mails for https://lore.kernel.org/bpf/0 in 0.53611s.
>> [...]
>>
>> I've started using it daily now and it appears to work nicely so far.
>> Given that, I'm wondering whether for a "kit" tool and beyond, we could use
>> something like lore git trees as a basis. The 'receive' side is already
>> there today, but I'm wondering if it's feasible to have a sendmail compatible
>> interface that would allow to push new "mails" into lore git trees as well,
>> where a bridge from lore git to vger list then distributes the message to
>> all email-based subscribers. Obviously this needs similar spam-filtering and
>> sanity checks as with vger lists, but eventually it wouldn't be any different
>> than anyone being able to send to vger via email. The nice thing would be
>> that the trees are mirrored on a wide basis already (and wouldn't need any
>> additional transport) and CI infrastructure can just pull them, work with
>> git sha ids, and reply with the results by pushing (implicitly by mentioned
>> sendmail compat tool, or "kit" etc). "kit" tool for contributors/reviewers
>> (I'd probably put both into the same bucket on a high level) and maintainers
>> could be built around the trees as foundation which could already solve the
>> issues around mail pointed out by Konstantin some time ago [1] while allowing
>> max compatibility to current workflows as a transition period. Just a thought.
> 
> Hi Daniel,
> 
> Do I understand correctly that you propose to use git as a transport
> layer to store some structured data about changes? This was mentioned
> during the maintainers summit [1], see "Git as the transport layer"
> section.
> 
> Using git is nice in the sense that we could reuse lots of existing
> infrastructure/code/tools rather than invent our own. And I think in
> the end the exact transport layer does not matter much (for users) as
> long as we can build the same interface on top of it.
> 
> However, Konstantin mentioned potential scalability problem with git
> in such scenario. It wasn't supposed to store "journal" type info, but
> rather small diffs to a code base. If we are considering such option
> for real, I guess we just need to evaluate it in such scenario and
> check how well/bad it works. We could also try to optimize git for
> such a scenario, maybe there is a single bottleneck that we could
> optimize...
>
> There will probably also be some implications on possibility of local peering.
> 
> If everybody will be able to push into the single git, we will need to
> figure out user auth story and single user screwing the whole thing
> intentionally or by accident.

Yep all true. The way lore git works is that there's a single file called 'm'
in the repo which always contains the top most mail from the list [0], and [1]
contains basically the diff to the previous mail from the list. Extracting the
actual git object blobs is sufficiently fast (imho, see above and [2]), and
basically the receive side integration into a mail client is already there with
a mechanism like l2md tool has. A push mechanism would need more server side
logic that ensures to not screw up the repo, never allow force push, and always
have the pushed 'm' file(s) conflict-free at the top of the tree (along with the
usual mail/spam filtering there is in place on vger). The way 'm' is handled
today may not be nicest or most natural way for git indeed, and despite that
it may seem more of an implementation detail at this point I thought I mention
it here along with l2md since it can be used today for reading and it feels the
'push' side may not be too far off to realize. It wouldn't solve all the other
discussed items from the wish list you/others brought up in your original thread
(which would need to work on top of the transport), but could be an alternative
way with regards to the email problem.

Thanks,
Daniel

  [0] https://git.kernel.org/pub/scm/public-inbox/vger.kernel.org/bpf/0.git/tree/m
  [1] https://git.kernel.org/pub/scm/public-inbox/vger.kernel.org/bpf/0.git/commit/?id=0c0e0a248293aa382c3451680e696bbeaf38c47e
  [2] Converting the entire netdev history (if anyone ever needs it in their mail client)
      with l2md from 03/2002 till 09/2019 takes on my laptop:
      [...]
      Processed 137396 new mails for https://lore.kernel.org/netdev/1 in 11.198241s.
      Processed 498001 new mails for https://lore.kernel.org/netdev/0 in 41.414329s.
      [...]

> [1] https://lwn.net/Articles/799134/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
