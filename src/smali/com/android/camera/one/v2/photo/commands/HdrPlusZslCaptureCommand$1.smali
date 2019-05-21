.class final Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;
.super Lcom/android/camera/session/EmptyCaptureSessionListener;
.source "HdrPlusZslCaptureCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;->trySaveZslBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMJ3AC5R62BRLEHKMOBQCD5PN8EP9B8______(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$finalShot:Lcom/android/camera/hdrplus/HdrPlusShot;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusShot;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;->val$finalShot:Lcom/android/camera/hdrplus/HdrPlusShot;

    invoke-direct {p0}, Lcom/android/camera/session/EmptyCaptureSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureDeleted()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand$1;->val$finalShot:Lcom/android/camera/hdrplus/HdrPlusShot;

    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusShot;->abortProcessing()V

    .line 202
    return-void
.end method
