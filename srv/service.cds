using {validation.db as validation} from '../db/schema';

service validationService {
    @odata.draft.enabled
    entity Student as
        select from validation.Student {
            *
        };
}
