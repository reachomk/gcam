.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$6;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "StateOpeningCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateOpeningCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$6;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 313
    check-cast p1, Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$6;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    .line 1317
    invoke-static {v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$1300(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 313
    return-object v0
.end method
