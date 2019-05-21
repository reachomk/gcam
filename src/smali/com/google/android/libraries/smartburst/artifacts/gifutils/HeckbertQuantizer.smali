.class public Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;
.super Ljava/lang/Object;
.source "HeckbertQuantizer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;


# instance fields
.field private final mUseDither:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;-><init>(Z)V

    .line 36
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;->mUseDither:Z

    .line 29
    return-void
.end method

.method private static native process(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIZ)V
.end method


# virtual methods
.method public final processImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 6

    .prologue
    .line 42
    iget-boolean v5, p0, Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;->mUseDither:Z

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;->process(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIZ)V

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    const-string v0, "HeckbertQuantizer[useDither="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/artifacts/gifutils/HeckbertQuantizer;->mUseDither:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
