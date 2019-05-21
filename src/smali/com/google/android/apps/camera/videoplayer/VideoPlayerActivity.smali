.class public Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"


# instance fields
.field private final screenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity$1;-><init>(Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final addNewVideoPlayerFragment(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 53
    .line 2053
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2054
    const-string v1, "video"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2056
    new-instance v1, Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;

    invoke-direct {v1}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;-><init>()V

    .line 2057
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f110186

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    return-void
.end method

.method private final getCurrentVideoPlayerFragment()Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f110186

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;

    .line 48
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->setContentView(I)V

    .line 1063
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1065
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1066
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getCurrentVideoPlayerFragment()Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->addNewVideoPlayerFragment(Landroid/net/Uri;)V

    .line 27
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 45
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getCurrentVideoPlayerFragment()Lcom/google/android/apps/camera/videoplayer/VideoPlayerFragment;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->addNewVideoPlayerFragment(Landroid/net/Uri;)V

    .line 39
    return-void
.end method
