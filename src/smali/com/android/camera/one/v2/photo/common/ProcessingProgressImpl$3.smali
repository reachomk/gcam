.class final Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;
.super Ljava/lang/Object;
.source "ProcessingProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->setRemoteThumbnail([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

.field private synthetic val$jpeg:[B


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;[B)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;->val$jpeg:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/google/android/gms/googlehelp/internal/common/zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/internal/common/zzd;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$3;->val$jpeg:[B

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureSaverCallback;->onRemoteThumbnailAvailable([B)V

    .line 91
    return-void
.end method
