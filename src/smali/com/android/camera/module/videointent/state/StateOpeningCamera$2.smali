.class final Lcom/android/camera/module/videointent/state/StateOpeningCamera$2;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


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
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 97
    .line 1100
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$2;->this$0:Lcom/android/camera/module/videointent/state/StateOpeningCamera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->access$002(Lcom/android/camera/module/videointent/state/StateOpeningCamera;Z)Z

    .line 1101
    const/4 v0, 0x0

    .line 97
    return-object v0
.end method
