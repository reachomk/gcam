.class public final Lcom/android/camera/module/videointent/state/StateIntentCompleted;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateIntentCompleted.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private valid:Z

.field private videoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "VidStateCompleted"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 18
    iput-boolean p2, p0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->valid:Z

    .line 19
    iput-object p3, p0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->videoUri:Landroid/net/Uri;

    .line 20
    return-void
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 5

    .prologue
    .line 24
    .line 1029
    iget-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->valid:Z

    if-eqz v0, :cond_0

    .line 1030
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1031
    sget-object v0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Current video URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1033
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->finishActivityWithIntentCompleted(Landroid/content/Intent;)V

    .line 25
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateIntentCompleted;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->finishActivityWithIntentCanceled()V

    goto :goto_0
.end method
