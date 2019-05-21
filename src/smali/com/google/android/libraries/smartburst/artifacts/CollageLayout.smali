.class public Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;
.super Ljava/lang/Object;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;,
        Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;
    }
.end annotation


# instance fields
.field public final borderWidth:I

.field public final height:I

.field public final orientation:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

.field public final primaryPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IIILcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Slot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput p1, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->width:I

    .line 39
    iput p2, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->height:I

    .line 40
    iput p3, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->borderWidth:I

    .line 41
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->orientation:Lcom/google/android/libraries/smartburst/artifacts/CollageLayout$Orientation;

    .line 42
    iput-object p5, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->primaryPhotos:Ljava/util/List;

    .line 43
    iput-object p6, p0, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;->slots:Ljava/util/List;

    .line 44
    return-void
.end method
