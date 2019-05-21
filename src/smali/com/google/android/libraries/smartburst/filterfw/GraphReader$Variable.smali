.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Variable;
.super Ljava/lang/Object;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variable"
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Variable;->name:Ljava/lang/String;

    .line 646
    return-void
.end method
