.class final Lcom/android/camera/module/capture/CaptureButtonReadiness$4;
.super Ljava/lang/Object;
.source "CaptureButtonReadiness.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureButtonReadiness;->addCameraReadinessCallback(Lcom/google/android/apps/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$4;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 124
    .line 1127
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureButtonReadiness$4;->this$0:Lcom/android/camera/module/capture/CaptureButtonReadiness;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->access$600(Lcom/android/camera/module/capture/CaptureButtonReadiness;)V

    .line 124
    return-void
.end method
