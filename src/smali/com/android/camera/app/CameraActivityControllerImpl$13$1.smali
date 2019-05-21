.class final Lcom/android/camera/app/CameraActivityControllerImpl$13$1;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl$13;->onDataFocusChanged$514KIAAM(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/app/CameraActivityControllerImpl$13;

.field private synthetic val$newIndex:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl$13;I)V
    .locals 0

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$13;

    iput p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;->val$newIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$13;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iget v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;->val$newIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4300(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2287
    return-void
.end method
