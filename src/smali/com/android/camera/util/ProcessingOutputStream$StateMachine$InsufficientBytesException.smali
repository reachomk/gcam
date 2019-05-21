.class public final Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;
.super Ljava/lang/Exception;
.source "ProcessingOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ProcessingOutputStream$StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsufficientBytesException"
.end annotation


# instance fields
.field private final requiredBytes:I

.field private final retryState:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 635
    iput p1, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->requiredBytes:I

    .line 636
    iput p2, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->retryState:I

    .line 637
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/util/ProcessingOutputStream$StateMachine;II)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p2, p3}, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getRequiredBytes()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->requiredBytes:I

    return v0
.end method

.method public final getRetryState()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/android/camera/util/ProcessingOutputStream$StateMachine$InsufficientBytesException;->retryState:I

    return v0
.end method
