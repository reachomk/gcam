.class final Lcom/android/camera/burst/ConstantRotationFrameSaver$2;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "ConstantRotationFrameSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/ConstantRotationFrameSaver;->enqueue(Lcom/android/camera/burst/FrameSaver$FrameSavingTask;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$openImageTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 0

    .prologue
    .line 293
    iput-object p2, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$2;->val$openImageTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/burst/ConstantRotationFrameSaver$2;->val$openImageTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 298
    return-void
.end method
