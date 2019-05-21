.class public final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;
.super Ljava/lang/Object;
.source "ValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final failedConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->flowName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->failedConstraints:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->flowName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->failedConstraints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;-><init>(Ljava/lang/String;Ljava/util/List;B)V

    return-object v0
.end method

.method public final require(Ljava/lang/String;Z)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;
    .locals 1

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;->failedConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-object p0
.end method
