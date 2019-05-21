.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;
.super Ljava/lang/Object;
.source "ValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult$Builder;
    }
.end annotation


# instance fields
.field private failedConstraints:Ljava/util/List;
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
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->flowName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->failedConstraints:Ljava/util/List;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getFlowName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->flowName:Ljava/lang/String;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->failedConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-string v0, "ValidationResult"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "strategy"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->flowName:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "valid"

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "failed constraints"

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->failedConstraints:Ljava/util/List;

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method
