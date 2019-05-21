.class final Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;
.super Ljava/lang/Object;
.source "ProcessingProgressImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->setFinalResult$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I54PBJELM78EP9AO______(Lcom/google/common/collect/Multimaps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

.field private synthetic val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;Lcom/google/common/collect/Multimaps;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->this$0:Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    .line 141
    invoke-static {v0}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQRRE5T874RR3CLPN6QBECT874RR7E9IN6SQ9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___(Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    .line 142
    invoke-virtual {v1}, Lcom/google/common/collect/Multimaps;->getJpeg()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    .line 143
    invoke-virtual {v2}, Lcom/google/common/collect/Multimaps;->getPictureSize()Lcom/android/camera/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    .line 144
    invoke-virtual {v3}, Lcom/google/common/collect/Multimaps;->getPictureSize()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    .line 145
    invoke-virtual {v4}, Lcom/google/common/collect/Multimaps;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl$6;->val$result$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUK39CDQ7ASJ5AHGMMPBI4H96ASRLDHQ3M___:Lcom/google/common/collect/Multimaps;

    .line 146
    invoke-virtual {v5}, Lcom/google/common/collect/Multimaps;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v5

    .line 140
    invoke-static/range {v0 .. v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->saveAndFinish(Lcom/android/camera/session/SessionBase;[BIIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 147
    return-void
.end method
