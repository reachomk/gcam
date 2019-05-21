.class public final Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private parentFragmentHint:Landroid/app/Fragment;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDLGMSOB7CLP2UKJ5E5QMASRK9LGMSOB7CLP58SJ5CL76UP357C______:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;B)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDLGMSOB7CLP2UKJ5E5QMASRK9LGMSOB7CLP58SJ5CL76UP357C______:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 45
    return-void
.end method

.method private final registerFragmentWithRoot(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    .line 147
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eq v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 1076
    iget-object v0, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method

.method private final unregisterFragmentWithRoot()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 1080
    iget-object v0, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method final getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public final getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public final getRequestManagerTreeNode$50KKOORFDKNM4TBDE1Q6AOR85TJMOQB4CKNMQOBEC5JMASHFA9IN2TB5EDQ4QOBEC5JMASIKE9IMAJJFCHIJM___()Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDLGMSOB7CLP2UKJ5E5QMASRK9LGMSOB7CLP58SJ5CL76UP357C______:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    return-object v0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "RMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "RMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    .line 197
    return-void
.end method

.method public final onDetach()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 177
    invoke-direct {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->unregisterFragmentWithRoot()V

    .line 178
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 215
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 184
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 190
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->onTrimMemory(I)V

    .line 206
    :cond_0
    return-void
.end method

.method final setParentFragmentHint(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->registerFragmentWithRoot(Landroid/app/Activity;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 54
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1127
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->parentFragmentHint:Landroid/app/Fragment;

    goto :goto_1
.end method
