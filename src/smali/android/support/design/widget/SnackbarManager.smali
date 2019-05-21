.class final Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;
    }
.end annotation


# static fields
.field private static sSnackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private final cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 199
    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 41
    :cond_0
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private final isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 3178
    if-eqz p1, :cond_0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 209
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 3178
    goto :goto_0

    :cond_1
    move v0, v1

    .line 209
    goto :goto_1
.end method

.method private final scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xabe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    return-void
.end method


# virtual methods
.method public final cancelTimeout$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIILG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dismiss$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTKIAAM(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 109
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 237
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCurrentOrNext$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDismissed$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIILG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 125
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onShown$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIILG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 137
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final restoreTimeout$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIILG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked$51662RJ4E9NMIP1FEDQN0S3FE9Q2UP35EDKMERHFETKM8PR5EGNL6RJ1CDLM4OBI9LGMSOB7CLP28GR1DHM64OB3DCTIIMG_(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 153
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
