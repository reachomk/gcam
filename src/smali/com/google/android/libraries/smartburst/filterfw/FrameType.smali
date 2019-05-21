.class public final Lcom/google/android/libraries/smartburst/filterfw/FrameType;
.super Ljava/lang/Object;
.source "FrameType.java"


# static fields
.field private static final ACCESS_UNKNOWN:I = 0x0

.field public static final ELEMENT_DONTCARE:I = 0x0

.field public static final ELEMENT_FLOAT32:I = 0xc8

.field public static final ELEMENT_FLOAT64:I = 0xc9

.field public static final ELEMENT_INT16:I = 0x65

.field public static final ELEMENT_INT32:I = 0x66

.field public static final ELEMENT_INT64:I = 0x67

.field public static final ELEMENT_INT8:I = 0x64

.field public static final ELEMENT_OBJECT:I = 0x1

.field public static final ELEMENT_RGBA8888:I = 0x12d

.field public static final READ_ALLOCATION:I = 0x4

.field public static final READ_CPU:I = 0x1

.field public static final READ_GPU:I = 0x2

.field public static final WRITE_ALLOCATION:I = 0x20

.field public static final WRITE_CPU:I = 0x8

.field public static final WRITE_GPU:I = 0x10

.field private static mTypeCache:Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/filterfw/SimpleCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessHints:I

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mDimensions:I

.field private final mElementId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mTypeCache:Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    .line 425
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    .line 426
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    .line 427
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    .line 428
    return-void
.end method

.method public static any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    const/4 v0, -0x1

    invoke-static {v1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static array()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameType;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static buffer1D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method private static elementToString(ILjava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    sparse-switch p0, :sswitch_data_0

    .line 385
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 367
    :sswitch_0
    const-string v0, "int8"

    goto :goto_0

    .line 369
    :sswitch_1
    const-string v0, "int16"

    goto :goto_0

    .line 371
    :sswitch_2
    const-string v0, "int32"

    goto :goto_0

    .line 373
    :sswitch_3
    const-string v0, "int64"

    goto :goto_0

    .line 375
    :sswitch_4
    const-string v0, "float32"

    goto :goto_0

    .line 377
    :sswitch_5
    const-string v0, "float64"

    goto :goto_0

    .line 379
    :sswitch_6
    const-string v0, "rgba8888"

    goto :goto_0

    .line 381
    :sswitch_7
    if-nez p1, :cond_0

    const-string v0, "*"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 383
    :sswitch_8
    const-string v0, "*"

    goto :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_5
        0x12d -> :sswitch_6
    .end sparse-switch
.end method

.method private static fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(IIILjava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method private static fetchType(IIILjava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameType;"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->keyValueForType(IIILjava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 415
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mTypeCache:Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 416
    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;-><init>(IIILjava/lang/Class;)V

    .line 418
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mTypeCache:Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    return-object v0
.end method

.method private static fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameType;"
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(IIILjava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method private static keyValueForType(IIILjava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 361
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static merge(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 6

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->tryMerge(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Incompatible types in connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return-object v0
.end method

.method private static mergeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 391
    if-nez p0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object p1

    .line 393
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 394
    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, p0

    .line 398
    goto :goto_0

    .line 400
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static single()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public static single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameType;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method static tryMerge(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 323
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-object p1

    .line 325
    :cond_0
    iget v0, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-nez v0, :cond_1

    move-object p1, p0

    .line 326
    goto :goto_0

    .line 327
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-ne v0, v1, :cond_2

    .line 328
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->tryMergeObjectTypes(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object p1

    goto :goto_0

    .line 329
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget v1, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-ne v0, v1, :cond_3

    .line 330
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->tryMergeBuffers(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object p1

    goto :goto_0

    .line 332
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static tryMergeBuffers(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 3

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    iget v1, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    if-ne v0, v1, :cond_0

    .line 345
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    iget v1, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    or-int/2addr v0, v1

    .line 346
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(III)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static tryMergeObjectTypes(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Lcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 3

    .prologue
    .line 337
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    iget v1, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mergeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 339
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    :goto_1
    return-object v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final asArray()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 206
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling asArray() on non-object type!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public final asSingle()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling asSingle() on non-object type!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->fetchType(Ljava/lang/Class;I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    instance-of v1, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    if-eqz v1, :cond_0

    .line 282
    check-cast p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 283
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget v2, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    iget v2, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    iget v2, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 286
    :cond_0
    return v0
.end method

.method public final getAccessHints()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    return v0
.end method

.method public final getContentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getElementId()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    return v0
.end method

.method public final getElementSize()I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 235
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    sparse-switch v1, :sswitch_data_0

    .line 248
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 237
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method public final getNumberOfDimensions()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isSpecified()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final keyString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->keyValueForType(IIILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mElementId:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->elementToString(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mDimensions:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(rcpu)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 301
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(rgpu)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 304
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(ralloc)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_2
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(wcpu)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 310
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(wgpu)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_4
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->mAccessHints:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(walloc)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_5
    return-object v0
.end method
