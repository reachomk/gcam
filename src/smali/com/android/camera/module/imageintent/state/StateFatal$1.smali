.class final Lcom/android/camera/module/imageintent/state/StateFatal$1;
.super Ljava/lang/Object;
.source "StateFatal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateFatal;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateFatal;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateFatal;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateFatal$1;->this$0:Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateFatal$1;->this$0:Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateFatal;->access$000(Lcom/android/camera/module/imageintent/state/StateFatal;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getFatalErrorHandler()Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/error/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 21
    return-void
.end method
