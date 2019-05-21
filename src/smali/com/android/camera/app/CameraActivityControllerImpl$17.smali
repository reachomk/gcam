.class final Lcom/android/camera/app/CameraActivityControllerImpl$17;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$17;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$17;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$5300(Lcom/android/camera/app/CameraActivityControllerImpl;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
