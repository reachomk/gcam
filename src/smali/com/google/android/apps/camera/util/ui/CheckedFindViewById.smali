.class public final Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
.super Ljava/lang/Object;
.source "CheckedFindViewById.java"


# instance fields
.field private final viewFinder:Lcom/google/android/apps/camera/util/ui/FindViewById;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/util/ui/FindViewById;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->viewFinder:Lcom/google/android/apps/camera/util/ui/FindViewById;

    .line 21
    return-void
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/camera/util/ui/ViewFindViewById;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/util/ui/ViewFindViewById;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Lcom/google/android/apps/camera/util/ui/FindViewById;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/google/android/apps/camera/util/ui/FindViewById;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;-><init>(Lcom/google/android/apps/camera/util/ui/FindViewById;)V

    return-object v0
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->viewFinder:Lcom/google/android/apps/camera/util/ui/FindViewById;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->viewFinder:Lcom/google/android/apps/camera/util/ui/FindViewById;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/util/ui/FindViewById;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method
