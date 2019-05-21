.class final Lcom/google/android/apps/camera/async/MutablePropertyResetter$PropertyWithDefault;
.super Ljava/lang/Object;
.source "MutablePropertyResetter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final property$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/camera/async/MutablePropertyResetter$PropertyWithDefault;->property$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/camera/async/MutablePropertyResetter$PropertyWithDefault;->defaultValue:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method final reset()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/camera/async/MutablePropertyResetter$PropertyWithDefault;->property$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/MutablePropertyResetter$PropertyWithDefault;->defaultValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 32
    return-void
.end method
